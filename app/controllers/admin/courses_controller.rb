class Admin::CoursesController < Admin::AdminController
	before_action :set_course, only: [:show, :edit, :update, :destroy]

	layout 'admin'

	respond_to :html

	def index
		@courses = Course.all
		respond_with(@courses, location: admin_courses_path)
	end

	def show
		respond_with(@course)
	end

	def new
		@course = Course.new
		respond_with(@course, location: new_admin_course_path)
	end

	def edit
	end

	def create
		@course = Course.new(course_params)
		@course.user_id = current_user.id
		@course.save
		respond_with(@course, location:  admin_courses_path)
	end

	def update
		if @course.update(course_params)
			respond_with(@course, location: admin_courses_path)
		else
			render :edit
		end
	end

	def destroy
		@course.destroy
		respond_with(@course, location: admin_courses_path)
	end

	private
	def set_course
		@course = Course.find(params[:id])
	end

	def course_params
		params.require(:course).permit(:name, :image)
	end

end