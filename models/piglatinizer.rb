class PigLatinizer

    def piglatinize(text)
        vowels = ["a", "e", "i", "o", "u"]
        blends_2 = ["th", "bl", "cl", "fl", "gl", "pl", "sl", "br", "cr", "dr", "fr", "gr", "pr", "tr", "sc", "sk", "sm", "sn", "sp", "st", "sw", "tw", "wh"]
        blends_3 = ["scr", "shr", "spl", "spr", "str", "thr"]
        words = text.split(" ")
        words = words.collect{|word|
            if vowels.include?(word[0]) || vowels.include?(word[0].downcase)
                irstfay = "way"
            elsif blends_3.include?(word[0..2]) || blends_3.include?(word[0..2].downcase)
                irstfay = word[0..2] + "ay"
                word[0..2] = ''
            elsif blends_2.include?(word[0..1]) || blends_2.include?(word[0..1].downcase)
                irstfay = word[0..1] + "ay"
                word[0..1] = ''
            else
                irstfay = word[0] + "ay"
                word[0] = ''
            end
            word += irstfay
        }
        result = words.join(" ")
        result
    end

end