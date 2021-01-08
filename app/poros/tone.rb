class Tone
  attr_reader :tone_name
  
  def initialize(tone_data)
    @tone_name = tone_data[:document_tone][:tones][0][:tone_name]
  end
end