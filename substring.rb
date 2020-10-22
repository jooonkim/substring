def substrings(text, dictionary)
    text.downcase! # convert text to lowercase to look for matches
    text.chars
    substring_array = [] 
    substring_hash = Hash.new(0) # initialize hash with default value of 0 instead of nil
    
    for i in 0..(dictionary.length - 1) do # search for each word in dictionary among characters in text
        substring_array.push(text.scan(/#{dictionary[i]}/))
    end

    substring_array.flatten! 

    substring_array.each do |v| # push words in substring_array to substring_hash, increasing the value for each repeated key
        substring_hash[v] += 1 
    end

    puts substring_hash # print hash
end

text = "Howdy partner, sit down! How's it going?"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings(text, dictionary)