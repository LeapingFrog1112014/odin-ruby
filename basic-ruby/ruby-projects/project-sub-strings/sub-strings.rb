# Project Sub Strings
# 05 - 09 - 2023

# String => Hash
# Given a string will check every word in string that is also in dictionary and return a hash of word: occurences 

def substrings (string, dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])
    
    hashSubstrings = Hash.new(0)
    downString = string.downcase

    dictionary.each do |word|
        matches = downString.scan(word).length
        if matches != 0
            hashSubstrings[word] = matches
        end
    end
    return hashSubstrings
end
