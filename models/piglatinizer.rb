class PigLatinizer



  def piglatinize(sentence)
    wordsArray=sentence.split(" ")

    wordsArray.collect do |word|

     upcased={}
    word.split("").each_with_index do |w,i|
      upcased[w.downcase+"-"+i.to_s]=(w==w.upcase)?true:false
    word=word.downcase
    wordArray=word.split("")
    firstLetter=wordArray.shift
     if(firstLetter.scan(/[bcdfghjklmnpqrstvwxz]/)!=[])
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
      if(firstLetter.scan(/[aeiouy]/)!=[])
        wordArray.unshift(firstLetter)
        wordArray.push("w","a","y")
      end
     end

     wordArray=wordArray.each_with_index.collect do |w,i|
      w=upcased[w+"-"+i.to_s]?w.upcase : w.downcase
      w
     end

     wordArray.join("")
     end.join(" ")
  end

  end
