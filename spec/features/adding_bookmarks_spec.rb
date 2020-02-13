feature 'adding bookmarks' do
  scenario 'a user can add bookmarks' do
    visit '/bookmarks/new'
    fill_in('url', with: 'http://www.bbc.co.uk')
    fill_in('title', with: 'BBC')
    click_button('Submit')
    expect(page).to have_link('BBC', href: 'http://www.bbc.co.uk')
    expect(page).to have_link('BBC', href: 'http://www.bbc.co.uk')
  end
end
