require 'rss'
require 'feedjira'
#require 'open-uri'
require 'digest'
require "fluent/plugin/input"

module Fluent::Plugin
  class RSSInput < Input
    Fluent::Plugin.register_input('rss', self)
    Encoding.default_internal = nil

    config_param :tag, :string
    config_param :url, :string
    config_param :interval, :time, default: '5m'
    config_param :tagged, :string, default: 'generic'
    config_param :parse_reddit_comments, :bool, default: false

    def configure(conf)
      super

      @tagged = @tagged.split(',').map {|attr| attr.strip }
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
        sleep @interval + Random.rand(@interval / 2 / 2)
        Thread.new(&method(:emit_rss))
      end
    end

    def emit_rss
      begin
        log.info(@url)
        rss = Feedjira::Feed.fetch_and_parse @url
        rss.entries.each do |item|
          record = {}
          record['title'] = item.title
          if item.content.nil? || item.content.empty?
            record['content'] = item.summary
          else
            record['content'] = item.content
          end
          record['feed'] = @url
          record['fingerprint'] = Digest::SHA256.hexdigest record['content']
          record['tags'] = @tagged
          record['url'] = item.url
          if item.published.nil?
             time = @current_time.to_i
             record['published'] = @current_time.strftime("%Y-%m-%d %H:%M:%S")
          else
             time = item.published.to_i
             record['published'] = item.published.strftime("%Y-%m-%d %H:%M:%S")
          end
          @router.emit(@tag, time, record)
          if @parse_reddit_comments and record['url'] =~ /https:\/\/www.reddit.com.*/
              sleep 10
              rss = Feedjira::Feed.fetch_and_parse item.url + '.rss'
              rss.entries.each do |item|
                  record = {}
                  record['title'] = item.title
                  if item.content.nil? || item.content.empty?
                    record['content'] = item.summary
                  else
                    record['content'] = item.content
                  end
                  record['feed'] = @url
                  record['fingerprint'] = Digest::SHA256.hexdigest record['content']
                  record['tags'] = @tagged
                  record['url'] = item.url
                  if item.published.nil?
                     time = @current_time.to_i
                     record['published'] = @current_time.strftime("%Y-%m-%d %H:%M:%S")
                  else
                     time = item.published.to_i
                     record['published'] = item.published.strftime("%Y-%m-%d %H:%M:%S")
                  end
                  @router.emit(@tag + ".comments", time, record)
              end
          end
        end
      rescue => e
        log.error e
      end
    end
  end
end

