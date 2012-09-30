module SpielplanSaar
  TableEntry = Struct.new(:position, :team, :games, :points, :goals, :difference)

  class TableEntry

    def self.parse(row_node)
      position = inner_text_at_position(row_node, 1)
      team =  inner_text_at_position(row_node, 2)
      games = inner_text_at_position(row_node, 3)
      points = inner_text_at_position(row_node, 4)
      goals = inner_text_at_position(row_node, 5)
      difference = inner_text_at_position(row_node, 6)

      self.new(position, team, games, points, goals, difference)
    end

    private

    def self.inner_text_at_position(row_node, position)
      row_node.xpath(".//td[#{position}]").inner_text.strip
    end

  end
end
