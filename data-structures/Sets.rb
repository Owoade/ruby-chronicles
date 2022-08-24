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

  def intersection( other_set )
    second_collection = other_set.collection;
    intersection_set = Set.new
    @collection.each { |element| intersection_set.add(element) if other_set.has(element)  }
    return intersection_set
  end

  def util_compare_set( other_set )
    comp_hash ={}
    comp_arr = [ self, other_set ].sort { |x,y| y.collection.length <=> x.collection.length }
    comp_hash = {
      :greater => comp_arr[0],
      :lesser => comp_arr[1]
    }
    puts comp_hash
    return comp_hash

  end

  def difference( other_set )
    second_collection = other_set.collection;
    difference_set = Set.new;
    set = util_compare_set( other_set );

    set[:greater].collection.each_with_index do |element,i|

      conjugate_value = set[:lesser].collection[i];

      difference_set.add(element) if !set[:lesser].has(element)

      difference_set.add(conjugate_value) if !set[:greater].has( conjugate_value ) and conjugate_value != nil

    end

    return difference_set
  end

  def subset( other_set )
    second_collection = other_set.collection;
    return @collection.all? { |element| other_set.has(element) }
  end



end

my_set = Set.new
puts my_set.add(2);
# puts my_set.add(32);
puts my_set.add(10);
# puts my_set.add(13);
# puts my_set.add(16);
# puts my_set.add(35);
# puts my_set.remove(3)
# puts my_set.collection

second_set = Set.new
second_set.add(10);
second_set.add(2);
second_set.add(5);
second_set.add(3);
second_set.add(6);
second_set.add(7);

puts my_set.subset( second_set )




