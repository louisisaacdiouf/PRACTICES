use std::{thread, time};

pub fn brain_fuck(cmd: &String)  {
    let mut pointer = 0;
    let mut cursor = 0;
    let mut data = vec![0 as char; 10];
    let mut loop_vec = Vec::new();
    let all_chars = cmd.chars().collect::<Vec<char>>();
    // let mut res = String::new();

    while cursor < all_chars.len() {
        if cmd.trim().is_empty() {
            // return Default::default();
            return;
        }
        dbg!(&cursor);
        println!("{:?}", data.clone().iter().map(|&c| c as u8).collect::<Vec<u8>>());
        // dbg!(&data);
        match all_chars[cursor] {
            '+' => {
                if (data[pointer] as usize) < 2048 {
                    data[pointer] = (data[pointer] as u8 + 1) as char;
                }
            }
            '-' => {
                if (data[pointer] as usize) > 0 {
                    data[pointer] = (data[pointer] as u8 - 1) as char;
                }
            }
            '>' => {
                if pointer < 2048 {
                    pointer += 1;
                }
            }
            '<' => {
                if pointer > 0 {
                    pointer -= 1;
                }
            }
            '.' => {
                print!("{}", data[pointer]);
                // res.push(data[pointer]);
            },
            '[' => {
                // On saute la boucle si le caractère pointé est déjà nul
                if data[pointer] as u8 == 0 {
                    let mut open_bracket = 1;
                    while open_bracket > 0 {
                        cursor += 1;
                        match all_chars[cursor] {
                            '[' => open_bracket += 1,
                            ']' => open_bracket -= 1,
                            _ => (),
                        }
                    }
                } else {
                    loop_vec.push(cursor);
                }
            }
            ']' => {
                if data[pointer].clone() as usize == 0 {
                    loop_vec.pop();
                } else {
                    cursor = loop_vec[loop_vec.len() - 1];
                }
            }
            _ => {}
        }
        cursor += 1;
        thread::sleep(time::Duration::from_millis(100));
    }
    // println!("{res}");
}
