// RUN: %dafny_0 /compile:0 /stdin < "%s" > "%t"
// RUN: %diff "%s.expect" "%t"

lemma TestStdin()
{
  assert 2 == 3; // this error should be labeled <stdin>(6, 11)
}
