require "rails_helper"

RSpec.feature "Signing out signed-in users" do
    before do
        visit "/"
    
        click_link "Sign in"
        fill_in "Email"
        fill_in "Password"
        click_button "Log in"
    end
    
    scenario do
        visit "/"
        click_link "Sign out"
        expect(page).to have_content("Signed out successfully.")
    end
    
end