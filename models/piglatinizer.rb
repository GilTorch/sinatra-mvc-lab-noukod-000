class PigLatinizer


  def piglatinize(word)
    words=word.split("")
    first_letter=words.shift 
    words+first_letter+"ay"
  end

end
