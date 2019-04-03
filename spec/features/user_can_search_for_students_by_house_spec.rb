require 'rails_helper'

describe 'When a user visits the root page' do
  it 'they can search for students by house' do
    # As a user
    # When I visit "/"
    visit '/'
    # And I select "Slytherin" from the dropdown
    find('#house').find(:xpath, '//option[contains(text(), "Slytherin")]').select_option

    # And I click on "Get Students"
    click_button 'Get Students'
    # Then my path should be "/search" with "house=slytherin" in the parameters
    expect(current_path).to eq('/search')
    # And I should see a message "22 Students"
    expect(page).to have_content('22 Students')
    # And I should see a list of the 22 members of Slytherin
    # And I should see a name and id for each student.
    expect(page).to have_content('Name: Gormlaith Gaunt')
    expect(page).to have_content('Student ID: 52')
  end
end
