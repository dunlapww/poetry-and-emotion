class SearchController < ApplicationController
  def index
    @poems = PoemFacade.author_search(params)
    @poems.each do |poem|
      tone_data = ToneService.tone_search(poem)
      tone = Tone.new(tone_data)
      poem.tone = tone.tone_name
    end
  end
end