require 'rails_helper'

describe 'as a user' do
  it 'can search students by house' do
    visit '/'
    select "Slytherin", :from => "house"
    click_button "Get Students"
    expect(current_path).to eq('/search')
    expect(page).to have_content("22 Students")
    expect(page).to have_css('.student', count: 22)
    within (first('.student')) do
      expect(page).to have_css('.name')
      expect(page).to have_css('.id')
    end
  end
end

# As a user
# When I visit "/"
# And I select "Slytherin" from the dropdown
# And I click on "Get Students"
# Then my path should be "/search" with "house=slytherin" in the parameters
# And I should see a message "22 Students"
# And I should see a list of the 22 members of Slytherin
# And I should see a name and id for each student.
# ```
#
#
# Your key is: alohamora
