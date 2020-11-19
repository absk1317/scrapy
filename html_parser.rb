# frozen_string_literal: true

require 'open-uri'
require 'nokogiri'

# download url to memory
class HtmlParser
  def self.open(url:)
    Nokogiri::HTML(Kernel.open(url))
  end
end
