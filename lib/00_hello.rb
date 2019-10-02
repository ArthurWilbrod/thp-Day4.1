def say_hello(first_name)
  afficher = "Bonjour, "+first_name +" !"
  puts afficher
end

def ask_first_name
  print "enter first_name : "
  first_name=gets.to_s
  return first_name
end


say_hello(ask_first_name)
