=begin
  A set of algos implementing loops
=end

def generate_multiplication_table( number, limit = 12  )
  index = 0
  while index <= limit
    puts "#{ number } x #{ index } = #{ number * index }"
    return puts "Maximum limit(20) has been exceeded" if index > 20
    index+=1;
  end
end

generate_multiplication_table( 3, 40)

def getMostOccuringLetter( string  )
  wordHash = {};
  most_occuring_letter = "";
  most_occuring_count = 0;
  $string = string;

  def getRecurringLetterCount( starting_index, letter  )
    recurring_letter_count = 1;
    for i in starting_index + 1 .. $string.length
      recurring_letter_count+=1 if letter === $string[i]
    end
    return recurring_letter_count
  end

  string.length.times do | index |
    letter_count = 0;
    letter = string[index]

    wordHash["#{letter}"] = getRecurringLetterCount( index, letter) if wordHash["#{letter}"] === nil

  end

  wordHash.each do |key, value|
    if value > most_occuring_count
      most_occuring_count = value;
      most_occuring_letter = key;
    end
  end

  return most_occuring_letter;

end


puts getMostOccuringLetter("maaroaom")

def fac( num )
  res = 1

  num.times do | index |
    res = res * index if index != 0
  end

  return res * num
end

puts fac( 4 )


