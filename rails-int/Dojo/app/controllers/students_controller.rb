class StudentsController < ApplicationController
  def new
    @camps = Camp.all
    @camp = Camp.find(params[:camp_id])
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      redirect_to "/camps/#{@student.camp_id}", notice: "You have successfully created a Student!"
    else
      flash[:errors] = @student.errors.full_messages
      redirect_to :back
    end
  end

  def show
    # created custome class method to join the student and the camp. Look at the Student model
    @student = Student.with_camp(params[:id])
    # created custom class method. Look at the Student model
    @cohort = Student.cohort(@student)
  end

  def edit
    @camps = Camp.all
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    if @student.update(student_params)
      redirect_to camp_student_path(@student.camp_id, @student.id), notice: "You have successfully updated a Student!"
    else
      flash[:errors] = @student.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
    Student.find(params[:id])
    redirect_to :root
  end

  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :email, :camp_id)
    end
end