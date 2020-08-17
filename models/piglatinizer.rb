class PigLatinizer

  def piglatinize(phrase)

    phrase.split(" ").map do |word|
      if word.start_with?(/[aeiouAEIOU]/)
        "#{word}way"
      else
        ind = word.index(/[aeiouAEIOU]/)
        consonants = word.chars.slice(0..ind-1).join("")
        post_consonants = word.chars.slice(ind..-1).join("")
        "#{post_consonants}#{consonants}ay"
      end
    end.join(" ")

  end

end
