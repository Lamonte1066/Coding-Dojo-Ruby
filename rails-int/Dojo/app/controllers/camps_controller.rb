class CampsController < ApplicationController
  def index
    @camps = Camp.all
  end

  def create
    @camp = Camp.create(camp_params)
    if @camp.save
      redirect_to @camp, notice: "You have successfully created a Dojo!"
    else
      flash[:errors] = @camp.errors.full_messages
      redirect_to :back
    end
  end

  def new
    @camp = Camp.new
  end

  def show
    @camp = Camp.find(params[:id])
    @students = @camp.students
  end

  def edit
    @camp = Camp.find(params[:id])
  end

  def update
    camp = Camp.find(params[:id])

    if @camp.update(camp_params)
      redirect_to root_path, noice: "You have successfully updated a Dojo!"
    else
      flash[:errors] = camp.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
    Camp.find(params[:id]).destroy
    redirect_to :root
  end

  private
    def camp_params
      params.require(:camp).permit(:branch, :street, :city, :state)
    end
end
