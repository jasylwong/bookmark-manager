feature 'viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content "https://github.com/jasylwong/"
    expect(page).to have_content "https://medium.com/"
    expect(page).to have_content "https://www.google.co.uk/"
  end
end
