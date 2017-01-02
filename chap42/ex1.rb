# is-a/has-a relationship. Animal is-a object
class Animal
end

# Dog is-a an Animal. Inherits from an Animal class
class Dog < Animal

  def initialize(name)
    # Dog has-a initialize method
    @name = name
  end
end

# Cat is-an Animal. Inherits from an Animal class
class Cat < Animal

  def initialize(name)
    # Cat has-a initialize method
    @name = name
  end
end

# Person is-a class
class Person

  def initialize(name)
    # Person has-a a initialize method
    @name = name

    # Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

# Employee is-a a Person. Inherits from Person class
class Employee < Person

  def initialize(name, salary)
    # calls the super class (Person) method of the same name & passes 'name' parameter
    super(name)
    # Employee entends the initialize method with one extra attribute. has-a salary
    @salary = salary
  end

end

# Fish is-a a object
class Fish
end

# Salmon Inherits from Fish class. Salmon is-a Fish
class Salmon < Fish
end

# Halibut is-a Fish. Halibut inherits from Fish class
class Halibut < Fish
end


# rover is-a Dog
rover = Dog.new("Rover") # a Dog named Rover is borned

# satan  is-a Cat
satan = Cat.new("Satan") # a Cat named Satan is borned

# mary is-a Person
mary = Person.new("Mary")

# mary has-a pet named satan
mary.pet = satan # mary is an instance of Person, attribute pet is set to satan, an instance of Cat

# Frank is-a Employee
frank = Employee.new("Frank", 120000) # frank is an instance of Employee, its name= Frank and salary = 120000 attributes are set

# frank has-a pet
frank.pet = rover # frank(an instance of Employee) has its pet attribute set

# flipper is-a Fish
flipper = Fish.new() # flipper is an instance of Fish

# crouse is-a Salmon
crouse = Salmon.new() # crouse is an instance of Salmon

# harry is-a Halibut
harry = Halibut.new()
