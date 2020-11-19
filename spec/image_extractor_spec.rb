# frozen_string_literal: true

require 'rspec'
require 'webmock/rspec'

require_relative './../utils/html_parser'
require_relative './../utils/image_extractor'

describe ImageExtractor do
  context 'args validation' do
    it 'validates presence of url arg' do
      expect { described_class.parse }.to raise_error(ArgumentError)
    end
  end

  context 'returns all images in given html' do
    it 'parses html, returns the images' do
      url = 'http://test.com'
      html = HtmlParser.open(url: url)

      expected_response = [
        '<img alt="test" height="92" src="/images/branding/testlogo/1x/testlogo_white_background_color_272x92dp.png">'
      ]
      expect(described_class.parse(html: html)).to eq(expected_response)
    end
  end
end
