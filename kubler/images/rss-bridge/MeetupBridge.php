<?php
class MeetupBridge extends BridgeAbstract {

        // https://www.meetup.com/topics/computer-programming/ar/quilmes/events/
        const MAINTAINER = 'Azimut';
        const NAME = 'Meetup';
        //const URI = 'https://www.meetup.com/topics/computer-programming/ar/quilmes/events/';
        const URI = 'https://www.meetup.com/cities/ar/quilmes/events/tech/';
        const CACHE_TIMEOUT = 21600; // 6h
        const DESCRIPTION = 'Returns events near Quilmes.';

        public function collectData(){
                $html = getSimpleHTMLDOM(self::URI)
                        or returnServerError('Could not request DuckDuckGo.');

                foreach($html->find("li[class='row event-listing clearfix doc-padding']") as $element){
                        $item = array();
                        $item['uri'] = $element->find('a', 0)->href;
                        $item['title'] = $element->find('a', 2)->innertext;
                        $item['content'] = $element->find('a', 2)->innertext . ' - By ' . $element->find('a', 1)->innertext;
                        $item['timestamp'] = strtotime($element->find('time', 0)->datetime);
                        $this->items[] = $item;
                }
                foreach($html->find("li[class='row event-listing clearfix doc-padding last']") as $element){
                        $item = array();
                        $item['uri'] = $element->find('a', 0)->href;
                        $item['title'] = $element->find('a', 2)->innertext;
                        $item['content'] = $element->find('a', 2)->innertext . ' - By ' . $element->find('a', 1)->innertext;
                        $item['timestamp'] = strtotime($element->find('time', 0)->datetime);
                        $this->items[] = $item;
                }
        }
}
