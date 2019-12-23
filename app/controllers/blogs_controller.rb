class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]


  PER = 4

  def index
    @blogs = Blog.all.order("created_at DESC").page(params[:page]).per(PER)

    if params[:sort_created]
      @blogs = Blog.all.order("created_at DESC").page(params[:page]).per(PER)
    end

    if params[:sort_status]
      @blogs = Blog.all.order("status ASC").page(params[:page]).per(PER)
    end

    if params[:sort_visit_date]
      @blogs = Blog.all.order("visit_date ASC").page(params[:page]).per(PER)
    end
  end

  def new
    if current_user == nil
      redirect_to tops_path, notice:"権限がありません。"
    end
    @blog = Blog.new
  end

  def create
    @blog = Blog.create(blog_params)
    @blog.user_id = current_user.id
    if @blog.save
      redirect_to blogs_path, notice:"業務連絡を作成しました。"
    else
      render :new
    end
  end

  def show
    @comments = @blog.comments

    @comment = @blog.comments.build
  end

  def edit


    if current_user.id == @blog.user.id || current_user.admin == true
    elsif current_user == nil
      redirect_to tops_path, notice:"権限がありません。"
    elsif current_user.id != @blog.user_id
      redirect_to tops_path, notice:"権限がありません。"

    end
  end

  def update
    if @blog.update(blog_params)
      redirect_to blogs_path, notice:"業務連絡を編集しました。"
    else
      render :edit
    end
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path, notice:"業務連絡を削除しました。"
  end


  private

  def set_blog
    @blog = Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:title, :content, :picture, :picture_cache, :priority, :visit_date, :status, :user_id )
  end

end
