feature 'Viewing Chitter home page' do
  scenario 'visiting home page' do
    visit('/login')
    fill_in('Username', with: 'Max Francis')
    fill_in('Password', with: '1234')
    click_button('Submit')
    expect(page).to have_content "This is the home page"
  end
end
