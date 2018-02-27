require 'rails_helper'

describe 'as an admin' do
  describe 'when I an on award index path' do
    scenario 'I see a form to create a new award with awards title' do
      award = Award.create!(title: "best actress")
      admin = User.create(username: "Ironman",
                          password: "stark",
                          role: 1)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit awards_path

      fill_in "award[title]", with: "Best picture"
      click_on "Create Award"

      expect(page).to have_content("Best picture")
      expect(page).to have_content("best actress")
    end
  end
end
# As an admin user,
# When I visit the awards index,
# I can see a form to create new awards,
# When I fill out the form with the awards title,
# And click submit,
# I see a list of awards I have created.