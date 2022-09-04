def permutation( arr )
$outcomes= [];
$global_arr = arr.dup;
$arr_dup = arr.dup;

def spread_val( val, arr_val )
  $global_arr.each_with_index do |value, i|
    arr_val.insert(i, val);
     if !$outcomes.include? arr_val
      puts "<<"
      puts arr_val
      puts ">>"
     end
  end
end

$global_arr.each do |value|
  spread_arr = $global_arr.select { |el| el != value };
  spread_val( value, spread_arr );
end

return $outcomes

end


 permutation( [1,2,3]);

