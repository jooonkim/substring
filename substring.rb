text = "Howdy partner, sit down! How's it going?"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, dictionary)
    text.downcase! # convert text to lowercase to look for matches
    substring_array = [] 
    substring_hash = Hash.new(0) # initialize hash with default value of 0 instead of nil
    
    for i in 0..(dictionary.length - 1) do # search for each word in dictionary among characters in text
        while text.include?(dictionary[i])
            substring_array.push(dictionary[i]) # add words that are a match. Need to fix: make sure the program doesn't break after each match
            text.slice!(dictionary[i])
        end

        text = "Howdy partner, sit down! How's it going?"
    end

    substring_array.each do |v| # push words in substring_array to substring_hash, increasing the value for each repeated key
        substring_hash[v] += 1 
    end

    puts substring_hash # print hash
end

substrings(text, dictionary)

# if text.include?(dictionary[i]) 