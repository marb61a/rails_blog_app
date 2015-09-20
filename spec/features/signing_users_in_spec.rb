require "rails_helper"

RSpec.feature "Users sign-in" do
    before do
        
    end
    
    scenario "with valid credentials" do
        visit "/"
        
        click_link "Sign in"
        fill_in "Email"
        fill_in "Password"
        click_button "Log in"
        
        expect(page).to have_content("Signed in successfully.")
        
    end
end