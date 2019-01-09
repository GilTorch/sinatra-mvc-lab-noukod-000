class PigLatinizer


  def piglatinize(word)
     wordArray=word.split("")
     firstLetter=wordArray.shift
      if(firstLetter.scan(/[bcdfghjklmnpqrstvwxz]/)!=[])
        if(wordArray[0].scan(/[bcdfghjklmnpqrstvwxz]/)!=[])
             secondLetter=wordArray.shift
            wordArray.push(firstLetter,secondLetter)
            wordArray.push("a","y")
        else
         wordArray.push(firstLetter)
         wordArray.push("a","y")
        end
      else
       if(word[0].scan(/[aeiouy]/)!=[])
         wordArray.push("w","a","y")
       end
      end

      wordArray.join("")

   end

end
