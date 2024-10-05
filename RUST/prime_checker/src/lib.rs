#[derive(PartialEq, Eq, Debug)]
pub enum PrimeErr {
    Even,
    Divider(u32),
}


pub fn prime_checker(nb: u32) -> Option<Result<u32, PrimeErr>> {
    match nb {
        v if v <= 1 => None,
        v if [2, 3, 5, 7].contains(&v) => Some(Ok(v)),
        v if v % 2 == 0 => Some(Err(PrimeErr::Even)),
        v => {
            for x in 2..=(v/2) {
                if nb%x == 0 {
                    return Some(Err(PrimeErr::Divider(x)));
                }
            }
            Some(Ok(v))
        }
    }
}
