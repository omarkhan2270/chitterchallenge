require 'spec_helper'
require 'peep'

feature 'feature.post' do
  scenario 'Post a message to the timeline' do
    visit('/')
    click_button "Post"
    fill_in "peep", with: "This is my first post to chitter"
    click_button "Post"
    expect(page). to have_content "This is my first post to chitter"
  end
end
