class SearchController < ApplicationController
  def index
    @poems = PoemFacade.author_search(params)
    @poems.each do |poem|
      tone_data = ToneService.tone_search(poem)
      poem.tone = tone_data[:document_tone][:tones][0][:tone_name]
    end
  end
end