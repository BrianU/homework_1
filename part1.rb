#For those just starting out, one suggested way to work on your code is to have a command window open and a text editor with this
#file loaded.  Make changes to this file and then run 'ruby part1.rb' at the command line, this will run your program.  Once you're
#satisfied with your work, save your file and upload it to the checker.


def palindrome?(str)
  str.downcase.gsub(/\W/,'').reverse == str.downcase.gsub(/\W/,'')
end

def count_words(str)
  word_counts = Hash.new
  str.downcase.scan(/\b[a-z]+/).each do |word|
    if word_counts[word].nil? then
      word_counts[word] = 1
    else
      word_counts[word] += 1
    end
  end
  word_counts
end
