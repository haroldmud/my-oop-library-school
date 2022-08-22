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

  def setter(name, age)
    @name = name
    @age = age
  end

  def getter
    {
      'id' => @id,
      'name' => @name,
      'age' => @age
    }
  end

  def is_of_age?
    age > 18
  end

  def can_use_service?
    @parent_permission == true || is_of_age?
  end

  private :is_of_age?
end