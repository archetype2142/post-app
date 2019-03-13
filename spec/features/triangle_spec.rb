require 'rails_helper'

RSpec.feature "Triangle", :type => :feature do
  scenario "Visiting homepage should display a message" do
    visit "/triangle"
    expect(page).to have_text("API")
  end
end
