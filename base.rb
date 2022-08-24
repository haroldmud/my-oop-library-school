require_relative './nameable'

class Base < Nameable
  def initialize(nameable)
    @nameable = nameable
    super(nameable)
  end

  def correct_name
    @nameable.correct_name
  end

  class CapitalizeDecorator < Base
    def correct_name
      @nameable.correct_name.capitalize
    end
  end
end

