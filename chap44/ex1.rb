# demonstrates 3 kinds of interaction - implicit, override & alter - from inheritance
# inheritance - Is-a relationship
class Parent

  def override()
    puts "PARENT override()"
  end

  def implicit()
    puts "PARENT implicit()"
  end

  def altered()
    puts "PARENT altered()"
  end
end

class Child < Parent  # Child class inherits from parent class

  def override()
    puts "CHILD override()"  # overrides the method with same name in base or parent class
  end

  # the implicit function from base class is untouched so its not altered or overriden

  def altered()
    puts "CHILD, BEFORE PARENT altered()"  # change to altered() before calling the base class instance method with same name
    super()  # base method with name name is call here
    puts "CHILD, AFTER PARENT altered()"   # change to altered() after calling the base class instance method with same name
  end
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()

dad.override()
son.override()

dad.altered()
son.altered()
