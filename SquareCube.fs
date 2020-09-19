// cerner_2^5_2020
// This F# program will print the square and cubes of numbers from 1 to 100

let ele = seq { for i in 1 .. 100 -> (i,i*i, i*i*i) }
for (c,square, cube) in ele do
   printfn "%d^2 = %d             %d^3 = %d" c square c cube