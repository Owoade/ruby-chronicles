def getPronoun( gender )
  if gender.downcase() === "male"
    return "He"
  elsif gender.downcase() === "female"
    return "She"
  else
    return "Dude! you gotta repent, Christ is here"
  end
end

puts getPronoun("Male")
