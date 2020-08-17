require 'pry'

class PigLatinizer

    def piglatinize(text)
        sentence = text.split(' ')

        mod = sentence.collect do |word|
            if word[0].match?(/[aeiouAEIOU]/)
           
                word << "way"
            else
                arr = word.split(/(a)|(e)|(i)|(o)|(u)/)
                arr << arr[0]
                arr.shift
                arr << "ay"
                arr.join('')
            end
        end
  
        mod.join(" ")

    end
end
 
