def roll_call_dwarves(array)
  array.each_with_index { |dwarf, index| puts "#{index+1}. #{dwarf}\n" }
end

def summon_captain_planet(array)
  new = []
  array.collect { |word| new.push("#{word.capitalize}!") }
  new
end

def long_planeteer_calls(array)
  array.any? { |word| word.length > 4 }
end

def find_the_cheese(array)
  cheese_types = ["cheddar", "gouda", "camembert"]
  index = 0 

  while index < cheese_types.length do 
    counter = 0 

    while counter < array.length do 

      if array[counter] == cheese_types[index]
        return array[counter]
      else 
        nil
      end 

      counter += 1

    end 
    index += 1
  end 

end 

puts find_the_cheese(array)