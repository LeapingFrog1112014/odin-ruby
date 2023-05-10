#Project Caesar Cipher
#05 - 09 - 2023

# String => String
# Program will iterate through string shifting each character down 3 or by shift factor

def caesar_cipher (string, shift_factor = 3)
    encrypted = Array.new(string.length)
    string.split("").each_with_index do |char, index|
        if char.downcase.ord.between?(97,122) == true
            if char.downcase.ord - shift_factor < 97
                char = (char.ord + (26 - shift_factor)).chr
            elsif char.downcase.ord - shift_factor > 122
                char = (char.ord - (26 - shift_factor)).chr
            else 
                char = (char.ord - shift_factor).chr
            end
        end
        encrypted[index] = char
    end
    return encrypted.join()
end
