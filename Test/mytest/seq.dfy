function sorted(s: seq<int>): bool
{
forall i,j :: 00 <= i < j < |s| ==> s[i] <= s[j]
}


method m()
{
  assert sorted([1,2]);
}