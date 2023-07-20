def solution(s)
     s= s.downcase
    if (s != "" )
    s= s.split()
    reversed= s.map {|i| i.reverse}
    reversed_string = reversed.join(' ')
    reversed_string
    else
        "String can't be empty or contain uppercase letters"
    end
end
s="djg msn pil wek" 
puts solution(s)