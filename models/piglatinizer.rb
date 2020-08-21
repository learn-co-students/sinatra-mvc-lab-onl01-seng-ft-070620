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
  end 