some_var = "false"
another_var = "nil"

case
    when some_var == "pink elephant"
        puts "Dont think about the pink elephants"
        
    when !another_var.nil?
        puts "question mark in "
        
    when some_var == "false"
        puts "looks like this one should execute"
        
    else
        puts "nothing else matched"
end

puts "======"

if some_var == "pink elephant"
    puts "dont think about pink elephant"
    
elsif another_var.nil?
    puts "questions mark"
    
elsif some_var == "false"
    puts "looks like this one should execute"
    
else
    puts "nothing else matched"
    
end