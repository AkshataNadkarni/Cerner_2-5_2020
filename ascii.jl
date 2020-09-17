# cerner_2^5_2020
#This program will print the ASCII table
for i in 0:255
    a= i== 0 ? "NUL" : i== 7 ? "BEL" : i== 8 ? "BKS" : i== 9 ? "TAB" :
       i==10 ? "LF " : i==13 ? "CR " : i==27 ? "ESC" : i==155 ? "CSI" : "|$(Char(i))|"
    print("$(lpad(i,3)) $(string(i,base=16,pad=2)) $a")
    (i&7)==7 ? println() : print("  ")
end