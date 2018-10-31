feature 'Signing up' do
  scenario 'trying to sign up to chitter' do
    visit('/login')
    fill_in('Sign up Username', with: 'Max Francis')
    fill_in('Sign up Password', with: '1234')
    fill_in('Sign up email', with: 'Max.francis@gmail.com')
    click_button('Sign up Submit')
    expect(page).to have_content "This is the login page"
  end
end
