require_relative './person'

module Teacher < Person
  def initialize(specialization, age, name, profession)
    super(name, age, profession)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end
