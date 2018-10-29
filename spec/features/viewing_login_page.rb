feature 'Viewing Chitter login page' do
  scenario 'visiting login page' do
    visit('/login')
    expect(page).to have_content "This is the login page"
  end

  scenario 'entering information for login page' do
    visit('/login')
    fill_in('Username', with: 'Max')
    click_button('Submit')
end
end 
