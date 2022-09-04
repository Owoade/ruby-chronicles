def permute_lettter( string )
 $result = []

 def add_to_arr(arr, val)
  arr << val if !arr.include? val
 end

 def util_permute( char, pos, str )
  add_to_arr($result, str.insert(pos, char.upcase));
  add_to_arr($result, str.delete(char.upcase).insert(pos, char.downcase));
 end

 string.length.times do  | i |
  $str_dup = string.dup
  char = string[i]
  # performs function call if only the character when parsed is !number
  util_permute(char, i, $str_dup.delete(char)) if !char.match?(/\A-?\d+\Z/);
 end

 return $result
end
puts permute_lettter("abcde")



