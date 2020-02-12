feature 'adding bookmarks' do
  scenario 'a user can add bookmarks' do    
    visit '/bookmarks/new'
    
    fill_in('url', with: 'http://www.bbc.co.uk')
    click_button('Submit')
    expect(page).to have_content 'http://www.bbc.co.uk'
  end
end