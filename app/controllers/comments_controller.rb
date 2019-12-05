class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end 

  def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.build(comment_params)

    respond_to do |format|
      if @comment.save
        format.js { render :index }
      else
        format.html { redirect_to blog_path(@blog), notice: '投稿できませんでした。。'}
      end
    end
  end

  def destroy
  binding.pry
  @comment = @blog.comment.find(params[:id])
  respond_to do |format|
    if current_user.id == @comment.user_id
      @comment.destroy
      format.js { render :index }
    else
      format.html { redirect_to blog_path(@blog), notice: '削除できませんでした。。'}
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:blog_id, :content)
  end
end
