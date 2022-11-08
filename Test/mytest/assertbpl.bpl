function {:identity} Lit<T>(x: T) : T;

function {:define} Math#min(a: int, b: int) : int{(if a<b then a else b)}

function {:define} Math#abs(a: int) : int{(if a<0 then -a else a)}


procedure check() returns ()
{

    assert Math#min(2,3)== 2;
}

