class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_filter :fetch_all_courses, :only => [:index, :calendar]
  before_filter :authenticate_user!, only: [:new, :edit, :update, :destroy, :admin_index]

  # GET /courses
  # GET /courses.json

  def index
    @courses = Course.all.where(:first_instance => true, :course_type => "mindfulness course")
  end

  def mep_index
    @courses = Course.all.where(:first_instance => true, :course_type => "mep course")
  end

  def calendar
    @courses = Course.all.where(:include_in_calendar => true)
  end

  def admin_index
    @mindfulness_courses = Course.all.where(:course_type => "mindfulness course")
    @mep_courses = Course.all.where(:course_type => "mep course")
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

    #downcase this
    anchor = @course.name.split(' ').join('_')

    course_time = [
      @course.start_time_1,
      @course.start_time_2,
      @course.start_time_3,
      @course.start_time_4,
      @course.start_time_5,
      @course.start_time_6,
      @course.start_time_7,
      @course.start_time_8,
      @course.start_time_9,
      @course.start_time_10,
      @course.start_time_11,
      @course.start_time_12,
    ]

    @course.course_instances.times do |i|

      #flag the first_instance as unique for displaying in a list
      if i == 0
        @course = Course.new({  name: @course.name,
                                date: @course.date,
                                time: @course.time,
                                registration_link: @course.registration_link,
                                course_content: @course.course_content,
                                start_time: course_time[i],
                                course_type: @course.course_type,
                                include_in_calendar: @course.include_in_calendar,
                                anchor: anchor,
                                first_instance: true })
        @course.save
      elsif i > 0
        @course = Course.new({  name: @course.name,
                                date: @course.date,
                                time: @course.time,
                                course_content: @course.course_content,
                                start_time: course_time[i],
                                course_type: @course.course_type,
                                include_in_calendar: @course.include_in_calendar,
                                anchor: anchor })
        @course.save
      end
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
      format.html { redirect_to admin_path, notice: 'Course was successfully destroyed.' }
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
      params.require(:course).permit( :course_content,
                                      :anchor,
                                      :include_in_calendar,
                                      :first_instance,
                                      :course_type,
                                      :test,
                                      :name,
                                      :date,
                                      :registration_link,
                                      :time,
                                      :start_time,
                                      :start_time_1,
                                      :start_time_2,
                                      :start_time_3,
                                      :start_time_4,
                                      :start_time_5,
                                      :start_time_6,
                                      :start_time_7,
                                      :start_time_8,
                                      :start_time_9,
                                      :start_time_10,
                                      :start_time_11,
                                      :start_time_12,
                                      :course_instances )
    end

  protected

    def fetch_all_courses
      @courses = Course.all
    end
end
