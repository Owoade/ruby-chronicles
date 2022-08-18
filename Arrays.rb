# Arrays

arr = [1, true, 3, "Micheal", nil, "the last element"];

puts arr.reverse();

puts arr.include? 3;

puts arr[0, 4]

def getMonthFromIndex( index )
  months = [ "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" ];

  return "Invalid index" if index >= months.length

  return months[index]
end

puts getMonthFromIndex(30)
