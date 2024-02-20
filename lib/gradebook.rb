class Gradebook
  attr_reader :name, 
              :courses

  def initialize(name)
    @name = name
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def list_all_students
    @courses.each_with_object({}) do |course, result|
      result[course] = course.students
    end
  end
end
