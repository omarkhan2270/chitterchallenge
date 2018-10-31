feature 'Viewing Chitter login page' do
  scenario 'visiting login page' do
    visit('/login')
    expect(page).to have_content "This is the login page"
  end
end
