require 'ostruct'

module SpielplanSaar

  class ResultPageParser
    attr_reader :html_content

    def initialize(html_content)
      @html_content = html_content
    end

    def self.parse(html_content)
      self.new(html_content).parse
    end

    def parse
      OpenStruct.new(:table => TableParser.new(html_content).parse)
    end

    private

  end

end
