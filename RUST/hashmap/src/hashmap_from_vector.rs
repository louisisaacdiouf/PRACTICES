use std::collections::HashMap;

pub fn parse(v: Vec<(&str, i32)>) -> HashMap<&str, i32> {
   v.into_iter().collect::<HashMap<&str, i32>>()
}
