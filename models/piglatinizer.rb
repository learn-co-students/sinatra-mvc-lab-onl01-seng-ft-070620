class PigLatinizer

    def piglatinize(user_input)
        array = user_input.split(" ")
        array.collect do |w|
            if w[0].match(/[aeouiAEIOU]/)
                "#{w}" + "way"
            else 
                vowel_index = w.index(/[aeouiAEIOU]/)
                consonants = w[0..vowel_index-1] 
                word_end = w[vowel_index..w.length]
                "#{word_end}" + "#{consonants}" + "ay"
            end 
        end.join(" ") 
    end 

end 
