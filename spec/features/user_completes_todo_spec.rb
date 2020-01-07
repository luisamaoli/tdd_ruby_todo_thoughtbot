require "rails_helper"
require "support/features/todo_helper"
require 'support/features/sign_in'

feature "User completes todo" do 
    scenario "successfully" do
        sign_in

        create_todo "Buy milk"

        click_on "Mark complete"
        #click_link("Mark complete", match: :first)
        #first("Mark complete").click

        expect(page).to display_completed_todo "Buy milk"
    end
end
