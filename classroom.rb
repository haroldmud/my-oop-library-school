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


  