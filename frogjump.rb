def solution(x, y, d)
    x=x.to_i
    y=y.to_i
    d=d.to_i

    l =  y-x ## distance between the two points
    ##divide by maximum leap to get nimber of jumps 
    ##convert to a floating point division
    num_of_jumps = l.to_f / d
    num_of_jumps=num_of_jumps.ceil

    puts num_of_jumps

end
solution(29876,4765445,567)

