! cerner_2^5_2020
!  This Factor program prints the first 50 Emirp numbers
!  An Emirp number is a number which is prime backwards and forwards.
!  Example: 13 and reverse of 13 i.e 31 both are prime numbers. Thus, 13,31 are an emirp numbers. 

USING: io kernel lists lists.lazy math.extras math.parser
    math.primes sequences ;
FROM: prettyprint => . pprint ;
IN: aksh.emirp
 
: rev ( n -- n' )
    number>string reverse string>number ;
 
: emirp? ( n -- ? )
    dup rev [ = not ] [ [ prime? ] bi@ ] 2bi and and ;
 
: nemirps ( n -- seq )
    0 lfrom [ emirp? ] lfilter ltake list>array ;
 
: print-seq ( seq -- )
    [ pprint bl ] each nl ;
 
: part1 ( -- )
    "First 50 EMIRP are:" print 50 nemirps print-seq ;
 
: main ( -- )
    part1 nl ;
    
MAIN: main