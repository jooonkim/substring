text = "Howdy partner, sit down! How's it going?"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, dictionary)
    text.downcase! # convert text to lowercase for #match 
    substring_array = [] 
    substring_hash = Hash.new(0)    
    
    for i in 0..(dictionary.length - 1) do # search for dictionary[i] among characters in text_array
        if text.include?(dictionary[i])
            substring_array.push(dictionary[i])
        end
    end

    substring_array.each do |v|
        substring_hash[v] += 1
    end

    puts substring_hash
end

substrings(text, dictionary)

    # for each word in dictionary, if there is a sequence in the text that matches, push the word to substring_array
    # for each word in substring_array, push the word to substring_hash, add to value (counter)