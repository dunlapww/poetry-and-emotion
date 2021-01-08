class PoemFacade
  def self.author_search(params)
    results = PoemService.author_search(params)
    results.first(10).map do |poem|
      Poem.new(poem)
    end
  end
end