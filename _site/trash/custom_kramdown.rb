require 'kramdown/parser/kramdown'
require 'kramdown-parser-gfm'

class Jekyll::Converters::Markdown::MyCustomProcessor
    def initialize(config)
      @config = config
    rescue LoadError
      STDERR.puts 'You are missing a library required for Markdown. Please run:'
      STDERR.puts '  $ [sudo] gem install funky_markdown'
      raise FatalException.new("Missing dependency: funky_markdown")
    end
  
    def convert(content)
      ::Kramdown.new(content).convert
    end
  end