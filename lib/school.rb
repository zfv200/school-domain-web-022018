class School
  attr_reader :name, :add_student
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
    if !@roster.keys.include?(grade)
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort
    end
  end

end


school = School.new("Bayside High School")
