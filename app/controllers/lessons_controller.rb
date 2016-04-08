class LessonsController < ApplicationController
  
  before_action :authenticate_user!
  before_action :require_enrolled_for_current_course

  def show
  end

  private

    helper_method :current_lesson
    def current_lesson
      @current_lesson ||= Lesson.find(params[:id])
    end

    def current_course
      @current_course = current_lesson.section.course
    end

    def require_enrolled_for_current_course
        unless current_user.enrolled_in?(current_course)
          redirect_to course_path(current_course)
          return flash[:alert] = 'Unauthorized. Enroll to view Lesson'
        end
    end

end
