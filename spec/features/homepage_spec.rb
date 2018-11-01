require 'spec_helper'

feature 'Can add a post' do
  it 'Adds a post to the chitter feed' do
    visit '/'
    expect(page).to have_field :new_peep
    peep = "Hey everyone, just smashing out some code."
    fill_in :peep, with: peep
    click_button "Submit"
    expect(page).to have_css(".feed", :text => peep)
  end
end
