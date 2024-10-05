//use std::collections::HashMap;
//mod hashmap_from_vector;

fn main() {
    /*============== VECTOR TO HASHMAP =========================

    let v: Vec<(&str, i32)> = vec![("Isaac", 2), ("Abraham", 5), ("Léna", 2), ("Gérard", 8), ("Stan", 1)];

    println!("{:?}", hashmap_from_vector::parse(v));

    ==========================================================*/


   let phrase = "“Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.”\n    ― Albert Einstein ";

   let raw_words = phrase.split_whitespace().collect::<Vec<&str>>();
   println!("{:?}", raw_words
       .iter()
       .filter(|&w| *w == "―")

       );
}
