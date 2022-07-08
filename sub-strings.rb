def substrings(word, dictionary)
    string_array = word.downcase.split
    substring_list = dictionary.reduce(Hash.new(0)) do |result, substring|
      sub_freq = string_array.select {|sw| sw.include?(substring)}
      sub_freq_total = sub_freq.count
      result[substring] += sub_freq_total
      result      
    end
    substring_list.delete_if {|key, value| value == 0}
  end
  
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
  p substrings("Howdy partner, sit down! How's it going?", dictionary)