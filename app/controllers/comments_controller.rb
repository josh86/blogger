class CommentsController < ApplicationController
  
  def create 
     @comment = Comment.new(params[:comment])
     @comment.article_id = params[:article_id]
     @comment.save
#     flash.notice = "Congrats Article '#{@article.title}' Created"
     redirect_to article_path(@comment.article)
  end
end
