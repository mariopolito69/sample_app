class User
  attr_accessor :name, :email

  def tette
  end

  def initialize(att = {})
    @name  = att[:name]
    @email = att[:email]
  end

  def formatted_email
      "#{@name} <#{@email}"
  end

end
