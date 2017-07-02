require 'rss'
#require 'simple-rss'
require 'open-uri'
require 'digest'

module Fluent
  class RSSInput < Fluent::Input
    Plugin.register_input 'rss', self
Encoding.default_internal = nil

    config_param :tag, :string
    config_param :url, :string
    config_param :interval, :time, default: '5m'
    config_param :attrs, :string, default: 'date, title, description'

    def configure(conf)
      super

      @attrs = @attrs.split(',').map {|attr| attr.strip }
      @current_time = Time.now
    end

    def start
      @thread = Thread.new(&method(:run))
    end

    def shutdown
      Thread.kill(@thread)
    end

    def run
      loop do
        Thread.new(&method(:emit_rss))
        sleep @interval
      end
    end

    def emit_rss
      begin
        #next_current_time = @current_time
        rss = RSS::Parser.parse(open(@url).read,false)
#        rss = RSS::Parser.parse(@url)
#       rss = SimpleRSS.parse open(@url)
        rss.items.each do |item|
          record = {}
          @attrs.each do |attr|
            record[attr] = item.send(attr) if item.send(attr)
          end
          record.delete('date')
          record['fingerprint'] = Digest::SHA256.hexdigest item.description
          time = item.pubDate.to_i
          #if time > @current_time
            Fluent::Engine.emit @tag, time, record
           # next_current_time = time if time > next_current_time
          #end
     end
        #@current_time = next_current_time
      rescue => e
        log.error e
      end
    end
  end
end
