def substrings(word, dictionary)
    p lowercase_string = word.downcase
    
  
    
    sub.reduce(Hash.new(0)) do |result, count|
      result[count] += 1
      result
    end
  
  end
  
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
  p substrings("Howdy partner, sit down! How's it going?", dictionary)