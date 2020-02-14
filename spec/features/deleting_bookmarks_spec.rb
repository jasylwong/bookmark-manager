require 'pg'

feature 'deleting bookmarks' do
  scenario 'a user can delete bookmarks' do
    Bookmark.create(url: 'http://www.bbc.co.uk', title: 'BBC')
    visit('/bookmarks')
    expect(page).to have_link('BBC', href: 'http://www.bbc.co.uk')
    visit '/bookmarks/delete'
    click_button('http://www.bbc.co.uk') 
    expect(current_path).to eq '/bookmarks'   
    expect(page).not_to have_link('BBC', href: 'http://www.bbc.co.uk')
  end
end
