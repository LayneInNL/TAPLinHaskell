{-# OPTIONS_GHC -w #-}

module Parser where

import Control.Applicative (Applicative (..))
import Control.Monad (ap)
import Data.Array qualified as Happy_Data_Array
import Data.Bits qualified as Bits
import Lexer

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4
  = HappyTerminal (Token)
  | HappyErrorToken Prelude.Int
  | HappyAbsSyn4 t4

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList =
  Happy_Data_Array.listArray
    (0, 33)
    ( [ 15984,
        16,
        0,
        0,
        0,
        15984,
        0,
        15984,
        15984,
        15984,
        15984,
        16384,
        0,
        0,
        0,
        128,
        15984,
        0,
        256,
        15984,
        0,
        0
      ]
    )

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
  token_strs_expected
  where
    token_strs = ["error", "%dummy", "%start_term", "Term", "true", "false", "if", "then", "else", "zero", "succ", "pred", "iszero", "'('", "')'", "%eof"]
    bit_start = st Prelude.* 16
    bit_end = (st Prelude.+ 1) Prelude.* 16
    read_bit = readArrayBit happyExpList
    bits = Prelude.map read_bit [bit_start .. bit_end Prelude.- 1]
    bits_indexed = Prelude.zip bits [0 .. 15]
    token_strs_expected = Prelude.concatMap f bits_indexed
    f (Prelude.False, _) = []
    f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (5) = happyShift action_2
action_0 (6) = happyShift action_4
action_0 (7) = happyShift action_5
action_0 (10) = happyShift action_6
action_0 (11) = happyShift action_7
action_0 (12) = happyShift action_8
action_0 (13) = happyShift action_9
action_0 (14) = happyShift action_10
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (5) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (16) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 (5) = happyShift action_2
action_5 (6) = happyShift action_4
action_5 (7) = happyShift action_5
action_5 (10) = happyShift action_6
action_5 (11) = happyShift action_7
action_5 (12) = happyShift action_8
action_5 (13) = happyShift action_9
action_5 (14) = happyShift action_10
action_5 (4) = happyGoto action_15
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_4

action_7 (5) = happyShift action_2
action_7 (6) = happyShift action_4
action_7 (7) = happyShift action_5
action_7 (10) = happyShift action_6
action_7 (11) = happyShift action_7
action_7 (12) = happyShift action_8
action_7 (13) = happyShift action_9
action_7 (14) = happyShift action_10
action_7 (4) = happyGoto action_14
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (5) = happyShift action_2
action_8 (6) = happyShift action_4
action_8 (7) = happyShift action_5
action_8 (10) = happyShift action_6
action_8 (11) = happyShift action_7
action_8 (12) = happyShift action_8
action_8 (13) = happyShift action_9
action_8 (14) = happyShift action_10
action_8 (4) = happyGoto action_13
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (5) = happyShift action_2
action_9 (6) = happyShift action_4
action_9 (7) = happyShift action_5
action_9 (10) = happyShift action_6
action_9 (11) = happyShift action_7
action_9 (12) = happyShift action_8
action_9 (13) = happyShift action_9
action_9 (14) = happyShift action_10
action_9 (4) = happyGoto action_12
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (5) = happyShift action_2
action_10 (6) = happyShift action_4
action_10 (7) = happyShift action_5
action_10 (10) = happyShift action_6
action_10 (11) = happyShift action_7
action_10 (12) = happyShift action_8
action_10 (13) = happyShift action_9
action_10 (14) = happyShift action_10
action_10 (4) = happyGoto action_11
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (15) = happyShift action_17
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_7

action_13 _ = happyReduce_6

action_14 _ = happyReduce_5

action_15 (8) = happyShift action_16
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (5) = happyShift action_2
action_16 (6) = happyShift action_4
action_16 (7) = happyShift action_5
action_16 (10) = happyShift action_6
action_16 (11) = happyShift action_7
action_16 (12) = happyShift action_8
action_16 (13) = happyShift action_9
action_16 (14) = happyShift action_10
action_16 (4) = happyGoto action_18
action_16 _ = happyFail (happyExpListPerState 16)

action_17 _ = happyReduce_8

action_18 (9) = happyShift action_19
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (5) = happyShift action_2
action_19 (6) = happyShift action_4
action_19 (7) = happyShift action_5
action_19 (10) = happyShift action_6
action_19 (11) = happyShift action_7
action_19 (12) = happyShift action_8
action_19 (13) = happyShift action_9
action_19 (14) = happyShift action_10
action_19 (4) = happyGoto action_20
action_19 _ = happyFail (happyExpListPerState 19)

action_20 _ = happyReduce_3

happyReduce_1 = happySpecReduce_1 4 happyReduction_1

happyReduction_1 _ =
  HappyAbsSyn4
    ( TermTrue
    )

happyReduce_2 = happySpecReduce_1 4 happyReduction_2

happyReduction_2 _ =
  HappyAbsSyn4
    ( TermFalse
    )

happyReduce_3 = happyReduce 6 4 happyReduction_3

happyReduction_3
  ( (HappyAbsSyn4 happy_var_6)
      `HappyStk` _
      `HappyStk` (HappyAbsSyn4 happy_var_4)
      `HappyStk` _
      `HappyStk` (HappyAbsSyn4 happy_var_2)
      `HappyStk` _
      `HappyStk` happyRest
    ) =
    HappyAbsSyn4
      ( TermIf happy_var_2 happy_var_4 happy_var_6
      )
      `HappyStk` happyRest

happyReduce_4 = happySpecReduce_1 4 happyReduction_4

happyReduction_4 _ =
  HappyAbsSyn4
    ( TermZero
    )

happyReduce_5 = happySpecReduce_2 4 happyReduction_5

happyReduction_5
  (HappyAbsSyn4 happy_var_2)
  _ =
    HappyAbsSyn4
      ( TermSucc happy_var_2
      )
happyReduction_5 _ _ = notHappyAtAll

happyReduce_6 = happySpecReduce_2 4 happyReduction_6

happyReduction_6
  (HappyAbsSyn4 happy_var_2)
  _ =
    HappyAbsSyn4
      ( TermPred happy_var_2
      )
happyReduction_6 _ _ = notHappyAtAll

happyReduce_7 = happySpecReduce_2 4 happyReduction_7

happyReduction_7
  (HappyAbsSyn4 happy_var_2)
  _ =
    HappyAbsSyn4
      ( TermIsZero happy_var_2
      )
happyReduction_7 _ _ = notHappyAtAll

happyReduce_8 = happySpecReduce_3 4 happyReduction_8

happyReduction_8
  _
  (HappyAbsSyn4 happy_var_2)
  _ =
    HappyAbsSyn4
      ( happy_var_2
      )
happyReduction_8 _ _ _ = notHappyAtAll

happyNewToken action sts stk [] =
  action 16 16 notHappyAtAll (HappyState action) sts stk []
happyNewToken action sts stk (tk : tks) =
  let cont i = action i i tk (HappyState action) sts stk tks
   in case tk of
        TokenTrue -> cont 5
        TokenFalse -> cont 6
        TokenIf -> cont 7
        TokenThen -> cont 8
        TokenElse -> cont 9
        TokenZero -> cont 10
        TokenSucc -> cont 11
        TokenPred -> cont 12
        TokenIsZero -> cont 13
        TokenLP -> cont 14
        TokenRP -> cont 15
        _ -> happyError' ((tk : tks), [])

happyError_ explist 16 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk : tks), explist)

newtype HappyIdentity a = HappyIdentity a

happyIdentity = HappyIdentity

happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
  fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
  pure = HappyIdentity
  (<*>) = ap

instance Prelude.Monad HappyIdentity where
  return = pure
  (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)

happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)

happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)

happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a

happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)

term tks = happyRunIdentity happySomeParser
  where
    happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll)

happySeq = happyDontSeq

parseError :: [Token] -> a
parseError _ = error "Parse error"

data Term
  = TermTrue
  | TermFalse
  | TermIf Term Term Term
  | TermZero
  | TermSucc Term
  | TermPred Term
  | TermIsZero Term
  deriving (Show)
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $

data Happy_IntList = HappyCons Prelude.Int Happy_IntList

infixr 9 `HappyStk`

data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
  happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) =
  (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

indexShortOffAddr arr off = arr Happy_Data_Array.! off

{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)

readArrayBit arr bit =
  Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)

newtype HappyState b c
  = HappyState
      ( Prelude.Int -> -- token number
        Prelude.Int -> -- token number (yes, again)
        b -> -- token semantic value
        HappyState b c -> -- current state
        [HappyState b c] -> -- state stack
        c
      )

-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
  let i = (case x of HappyErrorToken (i) -> i)
   in --     trace "shifting the error token" $
      new_state i i tk (HappyState (new_state)) ((st) : (sts)) (stk)
happyShift new_state i tk st sts stk =
  happyNewToken new_state ((st) : (sts)) ((HappyTerminal (tk)) `HappyStk` stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk =
  happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk =
  action nt j tk st ((st) : (sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk =
  happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))) : (_))) (v1 `HappyStk` stk') =
  let r = fn v1
   in happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk =
  happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_) : (sts@(((st@(HappyState (action))) : (_))))) (v1 `HappyStk` v2 `HappyStk` stk') =
  let r = fn v1 v2
   in happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk =
  happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_) : (((_) : (sts@(((st@(HappyState (action))) : (_))))))) (v1 `HappyStk` v2 `HappyStk` v3 `HappyStk` stk') =
  let r = fn v1 v2 v3
   in happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk =
  happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk =
  case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
    sts1@(((st1@(HappyState (action))) : (_))) ->
      let r = fn stk -- it doesn't hurt to always seq here...
       in happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk =
  happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
  case happyDrop k ((st) : (sts)) of
    sts1@(((st1@(HappyState (action))) : (_))) ->
      let drop_stk = happyDropStk k stk
       in happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk =
  happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
  case happyDrop k ((st) : (sts)) of
    sts1@(((st1@(HappyState (action))) : (_))) ->
      let drop_stk = happyDropStk k stk

          _ = nt :: Prelude.Int
          new_state = action
       in happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_) : (t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1) :: Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

happyGoto action j tk st = action j j tk (HappyState action)

-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
  let i = (case x of HappyErrorToken (i) -> i)
   in --      trace "failing" $
      happyError_ explist i tk
{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts)
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
  --      trace "entering error recovery" $
  action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions

-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# NOINLINE happyShift #-}

{-# NOINLINE happySpecReduce_0 #-}

{-# NOINLINE happySpecReduce_1 #-}

{-# NOINLINE happySpecReduce_2 #-}

{-# NOINLINE happySpecReduce_3 #-}

{-# NOINLINE happyReduce #-}

{-# NOINLINE happyMonadReduce #-}

{-# NOINLINE happyGoto #-}

{-# NOINLINE happyFail #-}

-- end of Happy Template.
