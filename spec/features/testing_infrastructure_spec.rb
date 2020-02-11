feature 'testing infrastructure' do
  scenario 'can run app and see root page' do
    visit '/'
    expect(page).to have_content('Bookmark Manager')
  end
end
