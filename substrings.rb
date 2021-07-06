#Ref: https://stackoverflow.com/questions/25938430/ruby-how-to-count-the-number-of-times-a-string-appears-in-another-string/25938828

def substrings(str, dictionary)
  #hash to store result
  result = Hash.new(0)

  #process the input string
  str = process_string(str)

  #for each of the word in dictionary, scan its appearance in the string
  #if its frequency is 0, don't put it in the hash
  #otherwise, create a new hash entry
  dictionary.each do |item|
    frequency = str.scan("#{item}").length
    if (frequency != 0)
      result[item] = frequency
    else next
    end
  end
  return result
end


def process_string(str)
  #remove all the irrelevant punctuations and make them all downcase
  processed_string = str.gsub(/[^A-Za-z0-9 ]/, '').downcase
  return processed_string 
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?",dictionary)
