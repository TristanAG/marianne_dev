class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_filter :fetch_all_courses, :only => [:index, :calendar]

  # GET /courses
  # GET /courses.json

  def index
    @courses = Course.all.where(:first_instance => true)
  end

  def calendar
    :fetch_all_courses
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)

    course_time = [
      @course.start_time_1,
      @course.start_time_2,
      @course.start_time_3
    ]

    @course.course_instances.times do |i|
      #flag the first_instance as unique for displaying in a list
      if i == 1
        @course = Course.new({name: @course.name, start_time: course_time[i], course_type: @course.course_type, first_instance: true })
        @course.save
      end

      @course = Course.new({name: @course.name, start_time: course_time[i], course_type: @course.course_type})
      @course.save
    end

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:first_instance, :course_type, :test, :name, :start_time, :start_time_1, :start_time_2, :start_time_3, :course_instances)
    end

  protected

    def fetch_all_courses
      @courses = Course.all
    end
end
