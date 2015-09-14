class CommentsController < ApplicationController
    before_action :set_article
    
    def create
        
    end
    
    private
        def comment_params
            params.require(:comment).permit(:body)
        end
        
        def set_article
            @article = Article.find(params[:article_id])
        end
end