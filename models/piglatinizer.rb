
class PigLatinizer

    attr_accessor :text

    def piglatinize(text)
        text.split(" ").collect do |word|
            if word[0].match(/[aAeEiIoOuU]/)
                word + "way"
            else 
                vowel_index = word.index(/[aAeEiIoOuU]/)   #returns index where first vowel occurs
                consonants = word.slice(0..vowel_index-1)
                remainder = word.slice(vowel_index..word.length)
                remainder + consonants + "ay"
            end 
        end.join(" ")
    end 

    
    # ALTERNATIVE SOLUTION

    # def piglatinize(text)
    #     letters = [*'a'..'z', *'A'..'Z']
    #     vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    #     consonants = letters - vowels

    #     text.split(" ").collect do |word|
    #         if vowels.include?(word[0])
    #             word + 'way'
    #         elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
    #             word[3..-1] + word[0..2] + 'ay'
    #         elsif consonants.include?(word[0]) && consonants.include?(word[1])
    #             word[2..-1] + word[0..1] + 'ay'
    #         elsif consonants.include?(word[0])
    #             word[1..-1] + word[0] + 'ay'
    #         else
    #             word
    #         end
    #     end.join(" ")
    # end

end 