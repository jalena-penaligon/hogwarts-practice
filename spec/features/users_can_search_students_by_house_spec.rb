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
