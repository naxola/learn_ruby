#write your code here
def add(a,b)
    return a + b
end
def subtract(a,b)
    return a - b
end
def sum(array = [])
    return array.sum
end

def multiply(a, b, *args)
    if(args.any?)
        mult = 1
        args.each do |i|
            mult = mult * i
        end
        return a * b * mult
    end
    return a * b
end

def power(b,e)
    res = 1
    (1..e).each do |i|
        res = res * b
    end
    return res
end

def factorial(n)
    res = 1
    if(n == 0 || n == 1)
        res = 1
    else
        (2..n).each do |i|
            res = res * i
        end
    end
    return res
end
