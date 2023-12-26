
# Wikipedia to Plain Text Converter

Converts wikipedia urls into simple text without any annoying references

Wikipedia articles are infamous for being heavily referenced. One article could all of a sudden end up being a rabbit hole where you start clicking on other links and might soon get lost in the process. This ruby script converts your wikipedia url into simple text. You will have all that you need without any references. Removing references also comes in handy when you are plugging this into any text-to-audio converter

## Installation

$ gem install simple_wiki_converter

$ require 'simple_wiki_converter'

$ scraper = SimpleWikiConverter::WikiScraper.new("enter-url-here")

$ puts scraper.scrape


## Usage

You can use this on all Wikipedia articles. It purposefully removes references in the plain text export. You will only get a clean text file consisting of headers and paragraphs.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/simple_wiki_converter. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/simple_wiki_converter/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SimpleWikiConverter project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/simple_wiki_converter/blob/main/CODE_OF_CONDUCT.md).

