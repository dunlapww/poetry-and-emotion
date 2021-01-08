require 'rails_helper'

describe 'As a User' do
  describe 'when I get to the /search page' do
    it 'I see a list of the first 10 poems' do
      visit '/'
      page.fill_in 'author', with: 'Emily'
      click_on('Get Poems')
      expect(current_path).to eq('/search')
    end
  end
end