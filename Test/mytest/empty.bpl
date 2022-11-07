function {:define}abs(x: int): int
{
  if x < 0 then -x else x
}


function {:define}min(x: int, y:int): int
{
  if x < y then x else y
}

procedure m()
{
  assert min(3,4) == 3;
}