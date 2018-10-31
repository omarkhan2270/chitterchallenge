feature 'Signing up' do
  scenario 'trying to sign up to chitter' do
    visit('/login')
    fill_in('Sign up Username', with: '9Max Francis')
    fill_in('Sign up Password', with: '91234')
    fill_in('Sign up email', with: '9Max.francis@cgi.com')
    click_button('Sign up Submit')

    expect(User.username_list).to include 'Max Francis'
    expect(User.password_list).to include '1234'
    expect(User.email_list).to include 'Max.Francis@cgi.com'

    expect(page).to have_content "This is the login page"
  end
end
