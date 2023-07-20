def solution(string)
    ## loop through the string
    string.length.times do |i|
        prev = string[i-1] if i >= 0
        after = string[i+ 1] if i <= string.length
        ## find the qustion
        if string[i] == "?"
            string[i] = ('a'.."z").to_a.sample 
        end
    end
    # puts string.inspect
    
    string
end
 puts solution("rd?e?wg??")