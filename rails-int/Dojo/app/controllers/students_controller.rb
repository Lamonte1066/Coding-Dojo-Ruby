class StudentsController < ApplicationController
  def index
  end

  def create
    @student = Student.new(first_name:params[:first_name], last_name:params[:last_name],emal:params[:email], camp:Camp.find(params['camp']))
    if @student.valid?
        @student.save
        session[:first_name] = nil
        session[:last_name] = nil
        session[:email] = nil
        session[:camp] = params[:camp]
        return redirect_to 'camps/'+params[:id]+'/students/new'
    end
  end

  def new
    @camp = Camp.find(params[:camp_id])
    @camps = Camp.all
    return render 'new'
  end

  def edit
    @camp = Camp.find(params[:camp])
    @student = Student.find(params[:student_id])
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.email = params[:email]
    @student.camp = @camp
    if @student.valid?
        session[:first_name] = nil
        session[:last_name] = nil
        session[:email] = nil
        session[:camp] = params[:camp]
        @student.save
        return redirect_to '/camps/'+params[:camp_id]
    else
      flash[:failed] = @camp.errors.full_messages
      session[:first_name] = params[:first_name]
      session[:last_name] = params[:last_name]
      session[:email] = params[:email]
      session[:camp] = params[:camp]
      return redirect_to '/camps/'+params[:camp]+'/students'+params[:student_id]+'/edit'
    end
  end

  def show
    @student = Student.find(params[:student_id])
    @start_date = @student.created_at.beginning_of_day
    @end_date = @student.created_at.end_of_day
    @students = Student.where(camp: Camp.find(params[:camp_id]), :created_at => @start_date..@end_date)
    return render 'show'
  end

  def update
    @camp = Camp.find(params[:camp])
    @student = Student.find(params[:student_id])
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.email = params[:email]
    @student.camp = @camp
    if @student.valid?
      session[:first_name] = nil
      session[:last_name] = nil
      session[:email] = nil
      session[:camp] = params[:camp]
      @student.save
      return redirect_to '/camps'+params[:camp_id]
    else
      flash[:failed] = @camp.errors.full_messages
      session[:first_name] = params[:first_name]
      session[:last_name] = params[:last_name]
      session[:email] = params[:email]
      session[:camp] = params[:camp]
      return redirect_to '/camps/'+params[:camp]+'/students'+params[:student_id]+'/edit'
    end
  end

  def destroy
    Student.find(params[:student_id]).destroy
    return redirect_to '/camps/'+params[:camp_id]
  end
end
