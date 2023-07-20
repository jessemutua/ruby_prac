# def non_overlapping(s)
#     pairs = []
#     (0..s.length - 2).step(2) do |i|
#       pair = s[i, 2]
#       pairs << pair if pair.length == 2 && pair.chars.uniq.length == 2
#     end
  
#     max_sum = 0
#     first_largest = nil
#     second_largest = nil
  
#     pairs.each do |pair|
#       sum = pair.to_i
#       if sum > first_largest.to_i
#         second_largest = first_largest
#         first_largest = sum
#       elsif sum > second_largest.to_i
#         second_largest = sum
#       end
#     end
  
#     max_sum = first_largest.to_i + second_largest.to_i if first_largest && second_largest
  
#     [pairs, max_sum]
#   end
  
#   # Example usage:
#   s = "43798"
#   pairs, sum = non_overlapping(s)
#   puts "Pairs: #{pairs.inspect}"
#   puts "Sum: #{sum}"
  

def solution (s)
    max_sum = 0
    n = s.length
   
    (0..n-4).each do |i|
       num1 = s[i, 2].to_i
   
     (i+2..n-2).each do |j|
       num2 = s[j, 2].to_i
   
       max_sum = [max_sum, num1 + num2].max
     end
end
   
    max_sum
end
s = "0332331"
puts solution(s)