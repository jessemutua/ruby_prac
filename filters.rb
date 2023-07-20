def solution(a)
  ##get the length of the array
  n = a.length

  ##initilaise filter count
  filter_count = 0

  ##get the total sum of the array
  total = a.sum

  #the goal is the amount of emmission required
  goal = total / 2

  ##remaining pollution is the amount of pollution remaining after halving 
  pollution_remaining = total

  #loop through the array 
  for i in 0..n-1
    ## check if the remaining pollution after each halving is greater than the goal and alson the pollution is greater than 2
    if (pollution_remaining >= goal && a[i] != 0 && a[i] >= 2) 
      ##increament the filter count if pollution is not less than half
      filter_count +=1.to_i
      ##halve the pollution as long as  the remaining pollution is greater than half
      a[i] = a[i] / 2.0
      ##subtract the halved pollution from the tottal pollution
      pollution_remaining -= a[i]
    else
      ##return filter count
      filter_count
    end
  end
  ##return filter count
  filter_count
end

puts solution([5, 19, 8, 1])
