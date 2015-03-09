class Person
  @name
  @age

  def initialize(name, age)
    @name = name
    @age  = age
  end

  def name
    return @name
  end

  def age=(age)
    @age = age
  end

  def age
    return @age
  end

  def say_hello_to(person)
    self.name.concat(": ")
      .concat("Hello ")
      .concat(person.name)
      .concat("!")
  end

  def adult?
    return self.age >= 18
  end
end
