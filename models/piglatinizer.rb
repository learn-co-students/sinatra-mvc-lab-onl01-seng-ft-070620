class PigLatinizer
    def piglatinize(input)
        input.split(" ").map do |word|
            if word =~ (/\A[aeiou]/i)
                word = word + 'way'
            elsif word =~ (/\A[^aeiou]+/i)
                match = /\A[^aeiou]+/i.match(word)
                word = match.post_match + match.to_s + 'ay'
            end
        end.join(" ")
    end
end
