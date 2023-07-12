def solution(n, k)
    rotated_array=n.dup

    k.times do |char|
        char=rotated_array.pop
        rotated_array.unshift(char)
    end
    rotated_array.inspect
end
n = [3, 8, 9, 7, 6] 
puts solution(n, 1)