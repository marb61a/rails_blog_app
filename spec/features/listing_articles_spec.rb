require "rails_helper"

RSpec.feature "Listing Articles" do
    
    scenario "List all articles" do
        visit "/"
        
        expect(page).to have_content(@article1.title)
        expect(page).to have_content(@article1.body)
    end
end