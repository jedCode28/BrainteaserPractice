# https://www.codewars.com/kata/554e4a2f232cdd87d9000038
# 7kyu
# In DNA strings, symbols "A" and "T" are complements of each other, as "C" and "G". I wrote a function with one side of the DNA (string, except for Haskell); you need to get the other complementary side. DNA strand is never empty or there is no DNA at all (again, except for Haskell).


def DNA_strand(dna)
  dna.gsub(/[ATGC]/, 'A' => 'T', 'T' => 'A', 'G' => 'C', 'C' => 'G')
end