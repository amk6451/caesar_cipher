def caesar_cipher(str, num)
    #initialize the hashmaps for pulling values
    lower_alph = Hash[('a'..'z').zip(0.upto(26))]
    upper_alph = Hash[('A'..'Z').zip(0.upto(26))]
    result = []
    array = str.split("")

    #shift each character according to given number alphabetically
    array.each do |char| 
        if lower_alph.has_key?(char)
            #(lower_alph[char] + num)%26) == must be value 0-25
            result.push( lower_alph.key((lower_alph[char] + num)%26))

        elsif upper_alph.has_key?(char)
            result.push( upper_alph.key((upper_alph[char] + num)%26) )
        else
            #spaces,symbols, non-alphabetic characters added to result
            result.push(char)
        end
    end
    return result.join()
end

puts caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"
