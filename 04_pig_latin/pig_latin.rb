
def translate str
    arr = str.split(' ')
    arr.map! do |s|
        x = s.index(/[aeiou]/)
        if x == 0 
            s = s + 'ay'
        elsif x > 0 and s[x] == 'u' and s[x-1] == 'q' 
            a = s.slice(0..x)
            s = s.slice(x+1..s.length-1) + a + 'ay'
        elsif x > 0
            a = s.slice(0..x-1)
            s = s.slice(x..s.length-1) + a + 'ay'
        end
    end
    return arr.join(' ')
end
