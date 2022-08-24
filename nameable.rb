class Nameable
  attr_accessor :Nameable

  def initialize(nameable)
    @nameable = nameable
  end

  def correct_name
    raise NotImplementedErro
  end
end