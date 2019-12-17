require "rails_helper"
require 'support/features/sign_in'
feature "User creats todos" do 
    scenario "successfully" do
        sign_in

        click_on "Add a new todo"
        fill_in "Title", with: "Buy milk"
        click_on "Submit"

        expect(page).to have_css ".todos li", text: "Buy milk"
    end
end