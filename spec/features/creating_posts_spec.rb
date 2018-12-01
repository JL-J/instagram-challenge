require 'rails_helper.rb'

feature 'Creating posts:' do
  scenario 'a user can create a post with image and hashtag' do
    visit '/'
    click_link 'New Post'
    attach_file('Image', "spec/images/afternoon-tea.jpg")
    fill_in 'Caption', with: '#afternoontea #bliss'
    click_button 'Create Post'
    expect(page).to have_content('#afternoontea #bliss')
    expect(page).to have_css("img[src*='afternoon-tea.jpg']")
  end
end
