# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
      visit new_book_path
      fill_in 'Title', with: 'harry potter'
      fill_in 'Author', with: 'RHQ'
      fill_in 'Price', with: '14.29'
      fill_in 'Published', with: '2000-11-11'
      click_on 'Create Book'
      visit books_path
      expect(page).to have_content('harry potter')
      expect(page).to have_content('RHQ')
      expect(page).to have_content('14.29')
      expect(page).to have_content('2000-11-11')
    end
end
