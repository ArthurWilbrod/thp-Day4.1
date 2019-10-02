def signup
  print "enter new mdp : "
  mdp=gets.to_s
  return mdp

end
def login(mdp)
  print "enter mdp : "
  mdp_e=gets.to_s
  if mdp_e==mdp
    puts "good mdp !!!"
    welcome_screen
  else login(mdp)
  end
end


def welcome_screen
  puts "Bienvenu dans TA zone secrète"
end

def perform
  mdp=signup
  login(mdp)
end
perform
