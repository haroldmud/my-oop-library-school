require_relative 'person'
require_relative 'classroom'
require_relative 'student'
require_relative 'teacher'

class App
  def initialize
    @book_arr = []
    @person_arr = []
    @rental_arr = []
    @id = 0
  end
end