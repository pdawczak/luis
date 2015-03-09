class PersonList
  attr_accessor :people

  def initialize(people)
    @people = people
  end

  def adults
    people.select(&:adult?)
  end

  def youth
    people - adults
  end
end
