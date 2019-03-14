class CommentsController < ApplicationController  
  def index; end

  def new
  	@comment = Comment.new
  end

  def create
  	comment = Comment.new(comment_params)
  	comment.post_id = params[:post_id]
  	comment.save

  	redirect_to post_path(comment.post)
  end

  def destroy
  	comment = Comment.find(params[:id]).destroy

  	redirect_to post_path(comment.post)
  end

private 
  def comment_params
	 params.require(:comment).permit(:content, :author)
  end
end