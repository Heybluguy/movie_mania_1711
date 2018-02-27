require 'rails_helper'

describe 'as a visitor' do
  describe 'when I am on the awards index path' do
    scenario 'I can not see the form to create a new form' do
      award = Award.create!(title: "best actress")
      award = Award.create!(title: "Best picture")

      visit awards_path

      save_and_open_page

      expect(page).to have_content("Best picture")
      expect(page).to have_content("best actress")
      expect(page).to_not have_content("Title")
    end
  end
end