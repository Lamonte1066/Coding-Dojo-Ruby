class PostsController < ApplicationController
  def index
    @posts = Post.all
    @users = User.all
    render layout: 'three_column'
  end

  def create
    @post = Post.new(form_params)
    if @post.save
      flash[:success] = "Created a new Post"
      redirect_to posts_path
    else
      flash[:errors] = @post.errors.full_messages
      redirect_to :back
    end
  end
  private
    def form_params
      params.require(:post_form).permit(:title, :content, :user_id)
    end
end
