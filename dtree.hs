dtree :: Tree Integer
dtree = dtree' 0 where
    dtree' depth = Fork { element = dapth
                        , left = dtree' (depth + 1)
                        , right = dtree' (depth + 1)
                        }
