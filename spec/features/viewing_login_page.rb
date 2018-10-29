feature 'entering info' do
  scenario 'entering information for login page' do
    visit('/login')
    fill_in('Username', with: 'Max')
    click_button('Submit')
    expect(page).to have_content "This is the login page"
  end
end
