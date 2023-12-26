# frozen_string_literal: true

require_relative "lib/simple_wiki_converter/version"
require 'open-uri'
require 'nokogiri'

Gem::Specification.new do |spec|
  spec.name = "simple_wiki_converter"
  spec.version = SimpleWikiConverter::VERSION
  spec.authors = ["Shreyas"]
  spec.email = ["shreyas314159@gmail.com"]

  spec.summary = "Converts wikipedia urls into simple text without any annoying references"
  spec.description = "Wikipedia articles are infamous for being heavily referenced. One article could all of a sudden end up being a rabbit hole where you start clicking on other links and might soon get lost in the process. This ruby script converts your wikipedia url into simple text. You will have all that you need without any references. Removing references also comes in handy when you are plugging this into any text-to-audio converter."
  spec.homepage = "https://github.com/shreyas314159/simple-wiki-converter"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"



  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
