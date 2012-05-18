require 'planet/parsers/base_parser'

class Planet
  class Parsers
    class BloggerParser < BaseParser
      @type = 'blogger'
      @domains = ['blogspot.com', 'blogger.com']

      def self.fetch_and_parse(feed)
        return Feedzirra::Feed.fetch_and_parse(feed)
      end
    end
  end
end
