def half_pyramid (step)
  blank = 0
  for i in 1..step do
      blank = step - i
      puts "#{' '*blank}#{'#'*i}"
  end
end

def full_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print "> "
  step = gets.chomp.to_i
  puts "Voici la pyramide :"
  for i in 1..step do
      blank = step - i
      puts "#{' '*blank}#{'#'*(i+(i-1))}"
  end
end

def wtf_pyramid

  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? choisi nombre impair"
  print "> "
  step = gets.chomp.to_i
  if step.odd?
    puts "Voici la pyramide :"
    for i in 1..step do
        blank = step - i
        puts "#{' '*blank}#{'#'*(i+(i-1))}"
    end
    diesenb=step+2
    for i in 1..(step-1) do
        blank = i
        puts "#{' '*blank}#{'#'*(diesenb-2*i)}"
    end
  else puts "impair svp"
  end
end

wtf_pyramid
