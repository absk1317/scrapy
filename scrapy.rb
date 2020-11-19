# frozen_string_literal: true

require_relative './html_parser'
require_relative './image_extractor'

# parse image tags in given webpage

## why this wrapper?
# 1. we can add caching later
# 2. abstraction layer on top of html parser
class Scrapy
  attr_accessor :url

  def initialize(url:)
    @url = url
  end

  def results
    # read data from html parser service, written with help of nokogiri
    html = HtmlParser.open(url: url)

    ImageExtractor.parse(html: html)
  end
end
