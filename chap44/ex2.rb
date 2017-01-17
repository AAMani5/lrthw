# demonstrates the same 3 kinds of interaction - implicit, override & alter - from composition(using a module)
# when modules are used for composition, its called mixin
# class can also be used inplace of modules for composition, but will need extra typing
# composition is a Has-a relationship

module Other # a module cannot be instanciated

  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def Other.altered() # this is a class method
    puts "OTHER altered()"
  end
end

class Child
  include Other # with include keyword, all instance methods in Other module become instance methods in Child class

  def override()
    puts "CHILD override()"
  end

  # Child class has an implicit()(included from Other module) which was not changed or overriden

  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    Other.altered() # call the class method - cannot use super keyword here, as its not inheritance
    puts "CHILD, AFTER OTHER altered()"
    puts
  end
end

son = Child.new()

son.implicit()
son.override()
son.altered()
