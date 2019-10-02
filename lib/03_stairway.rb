
def oie_gaming
  puts "Bienvenu dans le joie gaming"
  #puts "Start the game ?"
  #print "> (yes/no) :"
  #y=gets.to_s
  #puts y
  #yes="yes\n"
  #if y==yes
    puts "c'est partiiiiii"
    tour=0
    marche=0
    while marche<10 && marche>=0
      marche=oie_tour(tour,marche)
      tour=tour+1
    end
  #end
  if marche == 10

    puts "\n@@@@@@@@@@@@@@@@@@@"
    puts "C'est gagné !!"
    puts "@@@@@@@@@@@@@@@@@@@"
  end
  puts "\nFin du game"
  return tour
end

def oie_tour(tour,marche)

  print "\n----"
  puts "\nTour numero #{tour} tu es sur la marche #{marche} sur 10"
  puts "----\n"
  #puts "Lancer les des ?"
  #print "> (y/n) :"
  #y1=gets.to_s
  #if y1=="y\n"
    des=rand(1..6)
    puts "Tu as fais #{des} :) "

    if des==5 || des==6
      marche=marche+1
      puts "Tu avance d'une marche | marche = #{marche} "
    end

    if des==1
      if marche > 0
        marche=marche-1
        puts "Tu recule d'une marche | marche = #{marche} "
      else puts "Tu es deja à ZERO"
      end
    end

    if des==2 || des==3 || des==4
      puts "Tu restes sur ta marche | marche = #{marche} "
    end
  #else marche=-1
  #end
  return marche
end

def average_finish_time
  numbertour=0
  for i in (1..100)
    numbertour=numbertour+oie_gaming
  end
  puts "nombre de tour moyen pour 100 parties = #{numbertour/100}"
end

average_finish_time
