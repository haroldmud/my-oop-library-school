require_relative './student'

class Classroom
  attr_accessor :label

  def initialize(label)
    @label = label
  end

  def getter 
    {
      'label' => @label
    }
  end

  def setter(label)
    @label = label
  end

  def add_student
    new.Student(@label)
  end
end

class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
  end

  def add_rental(date)
    new.Rental(date)
  end
end

class Rental
  attr_accessor :date, :person_data, :book_data

  def initialize(date, person_obj, book_obj)
    @date = date
    @person_data << person_obj
    @book_data << book_obj
    person_obj.person << self
    book_obj.book << self
  end

  def belongs_to_person
    age = @person_data.age
    name = @person_data.name
    parent_permission = @parent_date.parent_permission
    new.Person(age, name, parent_permission)
  end
end
