feature 'Viewing Chitter home page' do
  scenario 'visiting home page' do
    visit('/login')
    fill_in('Username', with: 'Max')
    fill_in('password', with: '1234')
    click_button('Submit')
    expect(page).to have_content "This is the home page"
  end
end
