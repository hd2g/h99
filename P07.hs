data NestedList a
  = Elem a
  | List [NestedList a]

-- |
-- >>> flatten (Elem 5)
-- [5]
--
-- >>> flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
-- [1,2,3,4,5]
--
-- >>> flatten (List [])
-- []
--
flatten :: NestedList a -> [a]
flatten (Elem n) = [n]
flatten (List []) = []
flatten (List (x:xs)) = flatten x ++ flatten (List xs)
