require 'rails_helper.rb'

describe 'new posts needs image' do
    it 'needs an image to create a post' do
        visit '/'
        click_link 'New Post'
        fill_in 'Caption', with: "no pic test!!"
        click_button 'Create Post'
        expect(page).to have_content('画像が選択されていません')
    end
end
