require_relative './student'
require_relative './teacher'

class Person
  extend Student
  extend Teacher

  attr_reader : :id
  attr_writer : :name, :age, :parent_permission
  
end