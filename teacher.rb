module Teacher 
  def initialize(specialization, age, parent_permission: true, name="Unknown")
    super(name, age, parent_permission)

    @specialization = specialization
  end

  
end