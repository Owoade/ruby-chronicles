# Hashes

person = {
  name: "Owoade Anuoluwapo",
  :age => 30,
  "Education" => {
    :institution =>  "University if Ibadan",
    :level => 200,
    "Faculy" => "College of Medcine",
    department: "Physiology"
  },
  :languages => [ "English", "Yoruba", "Pidgin", "JavaScript", "PHP", "Ruby" ]
}

puts person;
puts person["Education"][:institution];
