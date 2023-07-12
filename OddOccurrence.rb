def solution(a)
  # Implement your solution here
  unpaired_element=nil

  a.each do |element|
    count=a.count(element)
    if count.odd?
      unpaired_element=element
      break
    end
  end
  unpaired_element
end
a = [9, 3, 9, 3, 9, 7, 9]
puts solution(a)