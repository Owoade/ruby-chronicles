class Set
  attr_accessor :collection;

  def initialize
    @collection = [];
  end

  def has( element )
    return @collection.include? element
  end

  def util_array_iteration_method( array, method )
    array.each { | element | method.call(element) }
  end


  def add ( value )
   return false if has(value)
   @collection.push(value)
   return true
  end

  def remove( element )
    return false if !has(element)
    element_index = @collection.index( element );
    @collection.delete_at(element_index)
    return true
  end

  def union( other_set )
    second_collection = other_set.collection;
    union_set = Set.new;
    union_iteration = proc { |element| union_set.add(element) }

    util_array_iteration_method(@collection, union_iteration);
    util_array_iteration_method(second_collection, union_iteration);

    return union_set.collection;
  end

end

my_set = Set.new
puts my_set.add(2);
puts my_set.add(3);
puts my_set.remove(3)
puts my_set.collection

second_set = Set.new
second_set.add(10);
second_set.add(5);
second_set.add(9);

puts my_set.union( second_set )




