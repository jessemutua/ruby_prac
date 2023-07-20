def solution(blocks)
    max_distance = 0
    n = blocks.length
  
    (0..n-2).each do |i|
      (i+1..n-1).each do |j|
        if blocks[j] > blocks[i]
          max_distance = [max_distance, j - i].max
        end
      end
    end
  
    max_distance
  end
  
  # Example usage:
  blocks = [1, 5, 5, 2, 6]
  result = solution(blocks)
  puts result
  