require 'rails_helper'
require 'support/macros'

RSpec.describe ArticlesController, type: :controller do

  describe "GET #edit" do
    before do
      
    end
    
    context "owner is allowed to edit his articles" do
      
    end
    
    context "non-owner is not allowed to edit other users articles" do
      
    end
    
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
