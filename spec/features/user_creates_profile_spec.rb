require 'rails_helper'

feature 'User creates profile' do
  scenario 'successfully' do
    visit '/new'

    fill_in 'Image Url', with: 'https://placehold.it/200x200.png'
    fill_in 'First Name', with: 'David'
    fill_in 'Last Name', with: 'Dev'
    fill_in 'Title', with: 'Web Developer'
    fill_in 'Description', with: 'I build web apps using Rails.'
    click_on 'Save'

    expect(current_path).to eq root_path
    expect(page).to have_css 'h1', text: 'David Dev'
    expect(page).to have_text 'Your profile has been created.'
  end
end
