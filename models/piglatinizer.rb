class PigLatinizer


  def piglatinize(word)
    wordArray=word.split("")
    # check the first letter of the word to see if it's a consonant or vowel
    firstLetter=wordArray.shift
     # if its a consonant check if the second letter is a consonant too
     if(firstLetter.scan(/bcdfghjklmnpqrstvwxz/)!=[])
       if(wordArray[0].scan(/bcdfghjklmnpqrstvwxz/)!=[])
         # if the second letter is a consonant and remove the two first consonants from the start of the word
            secondLetter=wordArray.shift
           # put them to the end
           wordArray.push(firstLetter,secondLetter)
           # add "ay" to them
           wordArray.push("a","y")
       else
        # if the second letter is not a consonant then do the same steps for the consonant:
        # put them to the end
        wordArray.push(firstLetter)
        # add "ay" to them
        wordArray.push("a","y")
       end
     else
      # if the first letter is a vowel just add "way" to the end of the string
      if(word[0].scan(/[aeiouy]/)!=[])
        wordArray.push("w","a","y")
      end
     end

     wordArray.join("")

  end

end
