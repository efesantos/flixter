class DashboardsController < ApplicationController

  before_action :authenticate_user!

  def show
    @taught_courses = current_user.courses
    @enrolled_courses = current_user.enrolled_courses
  end

end
