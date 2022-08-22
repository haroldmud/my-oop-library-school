require_relative './student'
require_relative './teacher'

class Person
  extend Student
  extend Teacher

  attr_reader : :id
  attr_writer : :name, :age, :parent_permission
  
  def initialize(age, name="Unknown", parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end
end