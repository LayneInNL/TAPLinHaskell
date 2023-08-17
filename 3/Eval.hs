module Eval where

import Lexer
import Parser

isnumerical :: Term -> Bool
isnumerical TermZero = True
isnumerical (TermSucc t) = isnumerical t
isnumerical _ = False

isval :: Term -> Bool
isval TermZero = True
isval TermFalse = True
isval t
  | isnumerical t = True
  | otherwise = False

eval1 :: Term -> Term
eval1 (TermIf TermTrue t2 _) = t2
eval1 (TermIf TermFalse _ t3) = t3
eval1 (TermIf t1 t2 t3) = let t1' = eval1 t1 in TermIf t1' t2 t3
eval1 (TermSucc t1) = let t1' = eval1 t1 in TermSucc t1'
eval1 (TermPred TermZero) = error "TermZero"
eval1 (TermPred (TermSucc nv1))
  | isnumerical nv1 = nv1
  | otherwise = error "TermZero"
eval1 (TermPred t1) = let t1' = eval1 t1 in TermPred t1'
eval1 (TermIsZero TermZero) = TermTrue
eval1 (TermIsZero (TermSucc nv1))
  | isnumerical nv1 = TermFalse
  | otherwise = error "TermZero"
eval1 (TermIsZero t1) = let t1' = eval1 t1 in TermIsZero t1'

eval :: Term -> Term
eval t =
  if isval t
    then t
    else let t' = eval1 t in eval t'

evaluate :: String -> Term
evaluate = eval . term . alexScanTokens