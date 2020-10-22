def substrings(text, dictionary)
    text.downcase! # convert text to lowercase for #match 
    text_array = text.chars # create array of individual characters in text, including spaces
    substring_array = [] 
    substring_hash = {}    
    
    dictionary.each do |word|
        if text.match(/word/) # if a word in the dictionary has a match within the text
            substring_array.push(word) # push word to substring_array
        end
    end

    substring_array.each do |match|
        substring_hash[match] += 1
    end

    puts substring_hash
end


    # for each word in dictionary, if there is a sequence in the text that matches, push the word to substring_array
    # for each word in substring_array, push the word to substring_hash, add to value (counter)


    # for each word in dictionary 1) set counter, 2) look for sequence of characters within array that match word, 3) add to counter
    # create hash and add key value pair to hash? ONLY if word in dictionary has > 0 for counter
    # or from the beginning add word in dictionary to hash as key (if exists) and then add the value as each 


    