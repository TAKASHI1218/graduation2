class CommentsController < ApplicationController
  # def index
  #   @comments = Comment.all
  # end

  def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.build(comment_params)

    @comment.user_id = current_user.id

    respond_to do |format|
      if @comment.save

    
        format.js { render :index }
      else
        format.html { redirect_to blog_path(@blog), notice: '投稿できませんでした。。'}
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])

  respond_to do |format|
    if @comment.destroy
      format.js { render :index }
    else
      format.html { redirect_to blog_path(@blog), notice: '投稿できませんでした。。'}
    end
   end
  end



  private

  def comment_params
    params.require(:comment).permit(:blog_id, :content, :user_id)
  end
end
