#write your code here
def ftoc(t_F)
    t_C = (t_F - 32)*5/9
    return t_C
end
def ctof(t_C)
    t_F = t_C*9.0/5.0 + 32.0
    return t_F
end