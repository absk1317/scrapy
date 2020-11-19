# frozen_string_literal: true

require 'open-uri'

# Image extractor
class ImageExtractor
  class << self
    def parse(html:)
      return [] unless html

      # filter for images
      html.css('img').map(&:to_s)
    end
  end
end
