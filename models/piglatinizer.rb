class PigLatinizer

    def piglatinize(phrase)
        words = phrase.split(' ')
        words.collect do |word|
            self.pl_word(word)
        end.join(' ')
    end

    def pl_word(word)
        if word.start_with?(/[QZWSXDCRFVTGBYHNJMKLPqzwsxdcrfvtgbyhnjmklp]/)
            prefix = ""
            word.chars.each do |char|
                if char.downcase == 'a' || char.downcase == 'e' || char.downcase == 'i' || char.downcase == 'o' || char.downcase == 'u'
                    break
                else
                    prefix << char
                end
            end
            word.delete_prefix!(prefix)
            word << prefix+'ay'
        else
            word << 'way'
        end
        word
    end
end