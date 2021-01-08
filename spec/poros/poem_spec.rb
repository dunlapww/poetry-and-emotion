require 'rails_helper'

describe Poem, type: :poros do
  before :each do
    @poem_data = { title: 'Not at Home to Callers',
              author: 'Emily Dickinson',
              lines: ['Not at Home to Callers', 'Says the Naked Tree --', 'Bonnet due in April --', 'Wishing you Good Day --'],
              linecount: '4' }
  end
  it 'exists' do
    poem = Poem.new(@poem_data)
    expect(poem.title).to eq(@poem_data[:title])
    expect(poem.lines).to eq(@poem_data[:lines])
    expect(poem.author).to eq(@poem_data[:author])
  end
end
