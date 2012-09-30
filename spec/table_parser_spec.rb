require "spec_helper"
require_relative "../lib/spielplan_saar/table_parser"

describe SpielplanSaar::TableParser do

  describe "#initialize" do

    let(:html_content) do
      File.open(File.join(FIXTURE_PATH, 'result_page_parser_test_page_1.html'))
    end

    let(:result_object) { SpielplanSaar::TableParser.new(html_content).parse }

    it "should parse html content" do
      result_object.should be
    end

    describe "result table" do

      it "should have many entries" do
        result_object.size.should be > 0
      end

      describe "test page 1" do

        it "should have size 12" do
          result_object.size.should be 12
        end

        describe "third entry" do
          let(:third_entry) { result_object[2] }

          it { third_entry.position.should eq('3') }
          it { third_entry.team.should eq('TV Merchweiler II') }
        end

      end

    end

  end

end
