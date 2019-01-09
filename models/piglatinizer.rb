class PigLatinizer


  def piglatinize(word)

    upcased={}
    word.split("").each do |w|
      upcased[w.downcase]=(w==w.upcase)?true:false
    end

    word=word.downcase
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
      if(firstLetter.scan(/[aeiouy]/)!=[])
        wordArray.unshift(firstLetter)
        wordArray.push("w","a","y")
      end
     end

     wordArray=wordArray.collect do |w|
      w=upcased[w]?w.upcase : w.downcase
      w
     end

     wordArray.join("")

  end
