def solution(s)
    def is_symmetric_fragment(substring)
      n = substring.length
      (0...n / 2).each do |i|
        return false if substring[i] != substring[n - i - 1]
      end
      true
    end
  
    max_length = 0
    n = s.length
  
    (0...n).each do |i|
      (i...n).each do |j|
        substring = s[i..j]
        remaining_question_marks = substring.count('?')
        next if remaining_question_marks.odd? # Skip substrings with an odd number of question marks
  
        symmetric_length = is_symmetric_fragment(substring.tr('?', ''))
        if symmetric_length
          max_length = [max_length, substring.length].max
        end
      end
    end
  
    # If the max_length is 0, it means there are no valid symmetric fragments.
    # In this case, if all characters are '?' or all characters are either '<' or '>',
    # then the maximum possible symmetric length is the length of the input string.
    if max_length == 0 && (s.count('?') == n || s.count('<') == n || s.count('>') == n)
      max_length = n
    end
  
    max_length
  end
  
  
  
  
  
  
  puts solution("<><??>>") # Output: 4
  puts solution("??????")  # Output: 6
  puts solution("<<?")       