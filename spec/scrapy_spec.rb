# frozen_string_literal: true

require 'rspec'

require_relative './../scrapy'

describe Scrapy do
  context 'args validation' do
    it 'validates presence of url arg' do
      expect { described_class.new }.to raise_error(ArgumentError)
    end
  end

  context 'calls other services to gather results' do
    it 'calls html parser service' do
      url = 'http://test.com'

      expect(HtmlParser).to receive(:open).with(url: url)

      described_class.new(url: url).results
    end

    it 'calls image extractor service' do
      url = 'http://test.com'
      expect(ImageExtractor).to receive(:parse)

      described_class.new(url: url).results
    end
  end
end
