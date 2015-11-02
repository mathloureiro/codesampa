class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @courses = Course.all
    respond_with(@courses)
  end

  def show
    @concepts = Concept.joins(:course).where(course_id: @course).order('fiat ASC')
    respond_with(@course)
  end

  private
    def set_course
      @course = Course.find(params[:id])
    end

end
