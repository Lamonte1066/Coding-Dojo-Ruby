class CampsController < ApplicationController
  def index
    @camps = Camp.all
  end

  def create
    @camp = Camp.create(camp_params)
    if @camp.valid?
      redirect_to "/camps"
    elsif @camp.errors
      flash[:errors] = @camp.errors.full_messages
      redirect_to '/camps/new'
    end
  end

  def new
    @camp = Camp.new
  end

  def show
    @camp = Camp.find(params[:id])
  end

  def edit
    @camp = Camp.find(params[:id])
  end

  def update
    camp = Camp.find(params[:id])
    if @camp.valid?
      redirect_to '/camps'
    elsif @camp.errors
      flash[:errors] = camp.errors.full_messages
      redirect_to "/camps/#{@camp.id}/edit"
    end
  end

  def destroy
    camp = Camp.find(params[:id])
    camp.destroy
    redirect_to :root
  end

  private
    def camp_params
      params.require(:camp).permit(:branch, :street, :city, :state)
    end
end
