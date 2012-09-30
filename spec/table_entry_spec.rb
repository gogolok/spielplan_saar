require "spec_helper"
require_relative "../lib/spielplan_saar/table_entry"

describe SpielplanSaar::TableEntry do
  describe ".parse" do
    let (:entry1) do
      html_content = <<-EOF
<tr bgcolor="">
  <td align="center"><font size="2">12</font></td>
  <td align="left"><font size="2">TV Heiligenwald I</font></td>
  <td align="center"><font size="2">4</font></td>
  <td align="center"><font size="2">0 : 8</font></td>
  <td align="center"><font size="2">107 : 148</font></td>
  <td align="center"><font size="2">-41</font></td>
</tr>
      EOF
      row_node = Nokogiri::HTML(html_content)
      SpielplanSaar::TableEntry.parse(row_node)
    end

    it { entry1.position.should eq('12') }
    it { entry1.team.should eq('TV Heiligenwald I') }
    it { entry1.games.should eq('4') }
    it { entry1.points.should eq('0 : 8') }
    it { entry1.goals.should eq('107 : 148') }
    it { entry1.difference.should eq('-41') }
  end
end
