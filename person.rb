require_relative './student'
require_relative './teacher'

class Person
  extend Student
  extend Teacher
end