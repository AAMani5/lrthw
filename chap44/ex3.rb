# composition using a class - extra typing of implicit() & needing to have an instance variable
# pointing to an instance of another class
# is its better to use modules for composition as shown in ex2.rb

class Other
  def override()
    puts "OTHER override(0)"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def altered()
    puts "OTHER altered()"
  end
end

class Child
  def initialize()
    @other = Other.new()
  end

  def implicit()
    @other.implicit()
  end

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    @other.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

son = Child.new()   # Other instantiated during son's initialize()

son.implicit()
son.override()
son.altered()
