class CampsController < ApplicationController
  def index
    @camps = Camp.all
  end

  def create
    @camp = Camp.new(form_params)
    if @camp.save
        flash[:success] = "Dojo created"
        redirect_to camps_create_url
    else
      flash[:errors] = @camp.errors.full_messages
      redirect_to camps_path
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
    session[:branch] = @camp.branch
    session[:street] = @camp.street
    session[:city] = @camp.city
    session[:state] = @camp.state
    return render 'edit'
  end

  def update
    camp = Camp.find(params[:id])

    if camp.update(form_params)
      flash[:success] = "Dojo updated"
      redirect_to camps_path
    else
      flash[:errors] = camp.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
    camp = Camp.find(params[:id])
    camp.destroy
    redirect_to camps_path
  end

  private
    def form_params
      params.require(:form).permit(:branch, :street, :city, :state)
    end
end
