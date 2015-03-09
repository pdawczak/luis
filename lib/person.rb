class Person
  attr_reader   :name
  attr_accessor :age

  def initialize(name, age)
    @name = name
    @age  = age
  end

  def say_hello_to(person)
    "#{name}: Hello #{person.name}!"
  end

  def adult?
    age >= 18
  end
end
