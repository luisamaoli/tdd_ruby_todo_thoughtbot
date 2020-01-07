require "rails_helper"
require 'support/features/sign_in'
feature "User creats todos" do 
    scenario "successfully" do
        sign_in

        create_todo "Buy milk"

        expect(page).to display_todo "Buy milk"
    end
end