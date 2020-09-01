class AdminController < ApplicationController
 before_action :authenticate_admin!
  layout 'admin'
  def index
    @no_of_student = Student.count
    @no_of_teacher = Teacher.count
    @no_of_parent = Parent.count
  end
end
