require 'peep'

feature 'post a peep' do

  scenario 'a person can post a peep' do
    visit ('/')
    fill_in 'peep', with: 'This is my first peep!'
    fill_in 'user', with: "omar"
    click_button 'post'

expect(subject).to have_content('This is my first peep!')
end
end
