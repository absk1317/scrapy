# frozen_string_literal: true

require 'rspec'
require 'webmock/rspec'

require_relative './../utils/html_parser'

describe HtmlParser do
  context 'args validation' do
    it 'validates presence of url arg' do
      expect { described_class.open }.to raise_error(ArgumentError)
    end
  end

  context 'returns proper html' do
    it 'opens url, and returns the html' do
      mock_file = File.read("#{__dir__}/fixtures/test.html")

      url = 'http://test.com'

      expect(described_class.open(url: url).to_s).to eq(mock_file.to_s)
    end
  end
end
