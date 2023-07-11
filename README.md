# ruby_prac
def solution(n)
    ##convert input to binary
    binary= n.to_s(2)
    #A variable that holds the current count of consecutive zeros 
    current_consecutive_zeros=0
    #A variable that holds the maximum number of consecutive 0's
    max_consecutive_zeros=0
    #A has_gap boolean that determines if a number has a gap 
    has_gap = false

    binary.each_char do |char|

        if char == '0'
            #if a character is zero add 1 to the variable 
            current_consecutive_zeros += 1
        else
            #set the max_consecutive_zeros to the greatest value of the current_consecutive_zeros
            max_consecutive_zeros=current_consecutive_zeros if current_consecutive_zeros > max_consecutive_zeros
            # Reset the current_consecutive_zeros to 0 to start another gap count 
            current_consecutive_zeros = 0 
            # set the gap to true since there exists another character other than 0 after the first gap
            has_gap = true   
        end
    end 
    #return 0 if there's no other character after 0 else return max_consecutive_zeros
   has_gap ? max_consecutive_zeros : 0

end
puts solution(1041)
puts 1041.to_s(2)

