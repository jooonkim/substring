text = "Howdy partner, sit down! How's it going?"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, dictionary)
    text.downcase! # convert text to lowercase for #match 
    text_array = text.chars # create array of individual characters in text, including spaces
    substring_array = [] 
    substring_hash = Hash.new(0)    
    
    for i in 0..(dictionary.length - 1) do # search for dictionary[i] among characters in text_array
        if text.include?(dictionary[i])
            substring_array.push(dictionary[i])
        end
    end

    substring_array.each do |match|
        substring_hash[match] += 1
    end

    p substring_hash
end


    # for each word in dictionary, if there is a sequence in the text that matches, push the word to substring_array
    # for each word in substring_array, push the word to substring_hash, add to value (counter)


    # for each word in dictionary 1) set counter, 2) look for sequence of characters within array that match word, 3) add to counter
    # create hash and add key value pair to hash? ONLY if word in dictionary has > 0 for counter
    # or from the beginning add word in dictionary to hash as key (if exists) and then add the value as each 


    