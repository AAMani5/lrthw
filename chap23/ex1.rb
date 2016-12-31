#https://github.com/ardha2008/ruby/blob/master/linkedlist/LinkedList.rb
#look at Learn Ruby the Hard Way Exercise 23 Read some code

class Node    # declaring a class
  attr_accessor :value, :next #declaring attributes

  def initialize(value) # defining initialize method with one parameter
    @value = value #setting the parameter to a instance variable
  end

  def print_forward(node) # defining a method with one parameter
    while node != nil # if parameter not equal to nil perform code block
      puts node.value
      node = node.next
    end
  end

  def reverse(node) # defining a method with one parameter
    first = node # local variable
    second = node.next #local variable
    current = node.next # local variable
    first.next = nil # local variable
    while second != nil # checking a condition
      second = second.next
      current.next = first
      first = current
      current = second
    end
    first # return value
  end

  def print_reverse(node) # defining a method
    print_forward(reverse(node)) # calling another method named print_forward
    #which takes the return values from previous method named reverse
  end

end

c = Node.new('pertama') # creating an instance of a class named Node
b = Node.new('kedua')
a = Node.new('ketiga')
a.next = b # assigning values to link a to b
b.next = c # then b to c

puts b.print_forward(a) # prints the linked list starting from a
