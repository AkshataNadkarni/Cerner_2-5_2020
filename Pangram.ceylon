/* cerner_2^5_2020
*  This program prints whether the String is a Pangram or not
*  A pangram is a unique sentence in which every letter of the alphabet(a to z) is used at least once. 
*  can run this program at https://tio.run/#ceylon 
*/
shared void run() {
 
	function pangram(String sentence) =>
 		let(alphabet = set('a'..'z'),
		letters = set(sentence.lowercased.filter(alphabet.contains)))
 		letters == alphabet;
 
 	value sentences = [
 		"The quick brown fox jumps over the lazy dog", 
        "cerner engineering productivity", 		
 		"Pack my box with five dozen liquor jugs.",
       	"The five boxing wizards jump quickly"   //can change this string to any other value to check for other output
 	];
 	for(sentence in sentences) {
        if(pangram(sentence))
            {
 		print("\"``sentence``\"  --- is a Pangram");
            }
        else
            {
            print("\"``sentence``\" --- is Not a Pangram");
            }
 	}
}