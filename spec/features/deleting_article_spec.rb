require "rails_helper"

RSpec.feature "Deleting an Article" do
    
    before do 
        joe = User.create(email: "joe@example.com", password: "password")
        login_as(joe)
        @article = Article.create(title: "First Article", body: "Body of first article", user: joe)
    end
    
    secnario "" do
        visit "/"
    
        click_link @article.title
        click_link "Delete Article"
    
        expect(page).to have_content("Article has been deleted")
        expect(current_path).to eq(articles_path)
    end
    
end