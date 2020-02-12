feature 'adding bookmarks' do
  scenario 'a user can add bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks VALUES (1, 'http://www.makersacademy.com');")
    
    visit '/'
    
    fill_in('add_bookmark', with: 'http://www.bbc.co.uk')
    click_button('Add')
    expect(page).to have_content 'http://www.bbc.co.uk'
  end
end