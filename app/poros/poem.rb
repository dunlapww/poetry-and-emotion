class Poem
  attr_reader :lines, :title, :author
  def initialize(poem_data)
    @lines = poem_data[:lines]
    @title = poem_data[:title]
    @author = poem_data[:author]
  end
end