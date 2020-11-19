# frozen_string_literal: true

require_relative './scrapy'

desc 'find images in the html page'
task :find_images, %i[url] do |_task, args|
  url = args[:url]

  puts Scrapy.new(url: url).results
end
