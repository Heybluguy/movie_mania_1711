# require 'rails_helper'

# describe 'as a visitor' do
#   describe 'when I am on movie index path' do
#     describe 'i see a page with guadians of the galaxy and' do
#       describe "i also see Best Picture, Best Sound, Best Action Film under an Awards for this Movie" do
#         scenario "and year award was won" do
#           @director = create(:director)
#           @movie = create!(title: "guadians of the galaxy", description: "racoon" , director: @director)
#           award = Award.create!(title: "best actress")
#           award_2 = Award.create!(title: "Best picture")
#           admin = User.create(username: "Ironman",
#                               password: "stark",
#                               role: 1)

#           allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

#           visit director_movies_path(@director)



#         end
#       end
#     end
#   end
# end

# As an unregistered user,
# When I visit the movie index,
# And I click on "Guardians of the Galaxy"
# I see a page with "Guardians of the Galaxy",
# I also see "Best Picture", "Best Sound", "Best Action Film" under an "Awards for this Movie:" heading
# I also see what year the award was won (year should be an attribute of the join table).