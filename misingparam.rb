def solution(a)
    #length of the array
    n = a.length+1
    #get expected sum of the array
    expected_sum = (n * (n+1))/2
    #get the sum of the array missing a value
    array_sum=a.sum
    #subtract to get the missing value
    missing_element = expected_sum-array_sum
    missing_element

end
a = [2, 4, 1, 5]
puts a.length
puts solution(a)