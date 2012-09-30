require 'nokogiri'

module SpielplanSaar
  class TableParser
    attr_reader :html_content

    def initialize(html_content)
      @html_content = html_content
    end

    def parse
      table_row_nodes.collect do |row_node|
        TableEntry.parse(row_node)
      end
    end

    private

    def doc
      @doc ||= Nokogiri::HTML(html_content)
    end

    def table_node
      @table_node ||= doc.xpath('//html/body/form/table/tbody/tr/td/table/tbody/tr/td[@id="logo_rechts_oben"]/form/table/tbody/tr/td/table/tbody/tr/td/table')[-3]
    end

    def table_row_nodes
      @table_row_nodes ||=
        begin
          table_node.xpath('.//tr')[1..-1] # skip first entry
        end
    end

  end
end
