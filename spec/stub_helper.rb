# frozen_string_literal: true

require 'rspec'
require 'webmock/rspec'

RSpec.configure do |config|
  config.before(:each) do
    mock_file = File.read("#{__dir__}/fixtures/test.html")

      stub_request(:get, /test.com/)
        .with(
          headers: {
            'Accept' => '*/*',
            'Accept-Encoding' => 'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
            'User-Agent' => 'Ruby'
          }
        )
        .to_return(status: 200, body: mock_file, headers: {})
  end
end
