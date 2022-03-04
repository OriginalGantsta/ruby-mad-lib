mad_lib = File.open("mad-lib.txt").read.to_s

finished_lib = mad_lib.split("[").map {|word|
    if word.include? "]"
        other_word = word.split("]")
        if other_word[0].split("")[0].downcase == "a"
            p "Write an " + other_word[0]
        else
        p "Write a " +  other_word[0]
        end
       userInput = gets.chomp
       other_word[0] = userInput
       other_word.join       
    else
    word   
    end}

puts finished_lib.join


