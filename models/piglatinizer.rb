class PigLatinizer

    def piglatinize(text)
        text.split(' ').map {|word| change(word)}.join(' ')
    end

    def change(text)
        if /^[aAeEiIoOuU]/i.match(text)
            "#{text}way"
        else
            parts = text.split(/([aeiou].*)/)
            "#{parts[1]}#{parts[0]}ay"
        end
    end

end