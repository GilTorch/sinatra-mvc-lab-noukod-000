class PigLatinizer


  def piglatinize(sentence)
   wordsArray=sentence.split(" ")

   wordsArray.collect do |word|
     wordArray=word.split("")
     firstLetter=wordArray.shift
     if(firstLetter.scan(/[bcdfghjklmnpqrstvwxz]/i)!=[])
       if(wordArray[0].scan(/[bcdfghjklmnpqrstvwxz]/)!=[])
           secondLetter=wordArray.shift

           if(wordArray[0].scan(/[bcdfghjklmnpqrstvwxz]/)!=[])
           thirdLetter=wordArray.shift
           wordArray.push(firstLetter,secondLetter,thirdLetter)
           wordArray.push("a","y")
           else
           wordArray.push(firstLetter,secondLetter)
           wordArray.push("a","y")
           end
       else
         wordArray.push(firstLetter)
         wordArray.push("a","y")
       end
     else
       if(firstLetter.scan(/[aeiouy]/i)!=[])
         wordArray.unshift(firstLetter)
         wordArray.push("w","a","y")
       end
     end

     wordArray.join("")
    end.join(" ")
 end


  end
