require_relative './person'

class Student < Person
  attr_accessor :classroom

  def initialize(classroom, age, profession)
    super(name, age, profession)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def add_to_classroom(label)
    new.classroom(label)
  end
end
