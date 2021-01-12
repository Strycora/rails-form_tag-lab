class StudentsController < ApplicationController
  before_action :select_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def new
  end

  def create
    session[:form_params] = params.inspect
    redirect_to new_student_path
  end

  private

  def select_student
    @student = Student.find(params[:id])
  end

end
