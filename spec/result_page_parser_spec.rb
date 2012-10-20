require "spec_helper"
require_relative "../lib/spielplan_saar/table_entry"
require_relative "../lib/spielplan_saar/result_page_parser"
require_relative "../lib/spielplan_saar/table_parser"

describe SpielplanSaar::ResultPageParser do

  describe ".parse" do

    let(:html_content) do
      File.open(File.join(FIXTURE_PATH, 'result_page_parser_test_page_1.html'))
    end

    let(:result_object) { SpielplanSaar::ResultPageParser.parse(html_content) }

    it "should parse html content" do
      result_object.should be
    end

    describe "result table" do
      it "should return a table" do
        result_object.table.should be
      end

    end

  end

end
