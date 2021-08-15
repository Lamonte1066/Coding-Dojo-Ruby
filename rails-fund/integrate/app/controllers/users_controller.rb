class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def create
    @user = User.create(name: params[:name])
    redirect_to "/users"
  end

  def new
    render "new"
  end

  def edit
    @user = User.find(params[:id]).name
    render "edit"
  end

  def show
  end

  def update
  end

  def destroy
  end

  def total
    @user_total = User.count
    render text: "Total of #{@user_total} users"
  end
end
