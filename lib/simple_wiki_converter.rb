# frozen_string_literal: true

require_relative "simple_wiki_converter/version"
require 'open-uri'
require 'nokogiri'

module SimpleWikiConverter
  class Error < StandardError; end
  
  class WikiScraper  # Renamed class for clarity
    def initialize(url)
      @url = url
    end

    def scrape
      doc = fetch_document
      remove_unwanted_elements(doc)
      extract_content(doc)
    end

    private

    def fetch_document
      Nokogiri::HTML(URI.open(@url).read)
    end

    def remove_unwanted_elements(doc)
      doc.css('.reference, .mw-headline#See_also, .mw-headline#References, .mw-headline#External_links').each(&:remove)
    end

    def extract_content(doc)
      content_array = doc.css('.mw-headline, p').map(&:content)
      content_array.join("\n\n")
    end
  end
end


if __FILE__ == $0
  def main
    if ARGV.empty?
      puts "Usage: simple_wiki_converter URL"
      exit
    end

    url = ARGV[0]
    scraper = SimpleWikiConverter::WikiScraper.new(url)
    puts scraper.scrape
  end

  main
end