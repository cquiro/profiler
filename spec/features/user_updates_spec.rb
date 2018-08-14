require 'rails_helper'

feature 'User updates profile' do
  feature 'image' do
    scenario 'successfully' do
      user = create(:user, image: 'https://placehold.it/200x200.png')
      visit '/edit'

      fill_in 'Image Url', with: 'https://new_image.url'
      click_on 'Save'

      expect(current_path).to eq root_path
      expect(page.find('.card-img')['src']).to have_content 'new_image.url'
      expect(page).to have_text 'Your profile has been updated.'
    end
  end

  feature 'first name' do
    scenario 'successfully' do
      user = create(:user, first_name: 'Pepe', last_name: 'Sierra')
      visit '/edit'

      fill_in 'First Name', with: 'David'
      click_on 'Save'

      expect(current_path).to eq root_path
      expect(page).to have_css 'h1', text: 'David Sierra'
      expect(page).to have_text 'Your profile has been updated.'
    end
  end

  feature 'last name' do
    scenario 'successfully' do
      user = create(:user, first_name: 'Pepe', last_name: 'Sierra')
      visit '/edit'

      fill_in 'Last Name', with: 'Grillo'
      click_on 'Save'

      expect(current_path).to eq root_path
      expect(page).to have_css 'h1', text: 'Pepe Grillo'
      expect(page).to have_text 'Your profile has been updated.'
    end
  end

  feature 'title' do
    scenario 'successfully' do
      user = create(:user, title: 'Developer')
      visit '/edit'

      fill_in 'Title', with: 'Web Developer'
      click_on 'Save'

      expect(current_path).to eq root_path
      expect(page).to have_css 'h3', text: 'Web Developer'
      expect(page).to have_text 'Your profile has been updated.'
    end
  end

  feature 'description' do
    scenario 'successfully' do
      user = create(:user, description: 'I code.')
      visit '/edit'

      fill_in 'Description', with: 'I build web apps.'
      click_on 'Save'

      expect(current_path).to eq root_path
      expect(page).to have_css 'p', text: 'I build web apps.'
      expect(page).to have_text 'Your profile has been updated.'
    end
  end
end
