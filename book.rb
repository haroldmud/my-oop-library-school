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
