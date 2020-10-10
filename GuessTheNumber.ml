(* cerner_2^5_2020
   This program will have the value set for 'N', the user has to guess which is that number by entering the number as an input to the program.
   When the user guesses the number properly it will print "You guessed it correctly!"
   till the guess is correct, Program allows the user to guess the number by entering a new value as an input to the program.
   can run this at https://www.jdoodle.com/compile-ocaml-online/
*)

let () =
  Random.self_init();
  let n =
    if Random.bool () then
      let n = 2 + Random.int 8 in
      print_endline "Please guess a number between 1 and 10 excluded";
      (n)
    else
      let n = 1 + Random.int 10 in
      print_endline "Please guess a number between 1 and 10 included";
      (n)
  in
  while read_int () <> n do
    print_endline "The guess was wrong! Please try again!"
  done;
  print_endline "You guessed it correctly!"