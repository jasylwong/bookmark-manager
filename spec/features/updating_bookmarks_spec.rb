require 'pg'

feature 'updating bookmarks' do
  scenario 'a user can update bookmarks' do
    bookmark = Bookmark.create(url: 'http://www.amazon.co.uk', title: 'Amazon')
    visit('/bookmarks')
    expect(page).to have_link('Amazon', href: 'http://www.amazon.co.uk')

    first('.bookmark').click_button 'Edit'
    expect(current_path).to eq "/bookmarks/#{bookmark.id}/edit"
    fill_in('url', with: 'http://www.amazon.com')
    fill_in('title', with: 'Amazon US')
    click_button('Submit')

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Amazon', href: 'http://www.amazon.co.uk')
    expect(page).to have_link('Amazon US', href: 'http://www.amazon.com')
  end
end