module DropsWithFolds where


drop1 skipSize sourceList = fst (foldl (\acc x -> if snd acc >= skipSize
                                                  then (fst acc ++ [x], snd acc + 1)
                                                  else (fst acc, snd acc + 1))
                                                  ([], 0) sourceList)

drop2 skipSize sourceList = fst (foldr (\x acc -> if snd acc < length sourceList - skipSize
                                                  then (x : fst acc, snd acc + 1)
                                                  else (fst acc, snd acc + 1))
                                                  ([], 0) sourceList)

