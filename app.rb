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

  def add_student
    printf 'name:'
    name = gets.chomp
    printf 'age:'
    age = gets.chomp
    printf 'permission parents? [Y/N]:'
    permission = gets.chomp
    true_permission = permission == 'y' || 'yes' || 'Y'
    puts "Name: #{name} Age: #{age} created successfully"
    @id += 1
    @person_arr.push({ 'id' => @id.to_s, 'name' => name, 'age' => age, 'profession' => 'Student' })
    Student.new('Year 1', age, name, 'Student', true_permission)
  end
end