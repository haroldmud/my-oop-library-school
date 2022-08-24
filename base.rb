require_relative './nameable'

class Base 
  def initialize(nameable)
    @nameable = nameable
    super(nameable)
  end

  def correct_name
    @nameable.correct_name
  end

  def
end

