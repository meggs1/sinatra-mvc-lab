class PigLatinizer

    def piglatinize(user_phrase) #splits user's phrase in to words, pizlatinizes them then rejoins them to a string
        user_phrase.split(" ").collect{ |word| piglatinize_word(word)}.join(" ")
    end

    def vowel?(letter)
        letter.match(/[AaEeIiOoUu]/)
    end

    def piglatinize_word(word)
        if vowel?(word[0]) #if the word starts with a vowel
            word + "way"
        else #find the index of first vowel in the word and split it there
            vowel_index = word.index(/[AaEeIiOoUu]/)
            first_consonants = word.slice(0..vowel_index - 1)
            end_of_word = word.slice(vowel_index..word.length)
            end_of_word + first_consonants + "ay"
        end
    end


end