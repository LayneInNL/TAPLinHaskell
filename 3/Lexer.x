{
module Lexer where
}

%wrapper "basic"

$digit = 0-9
$alpha = [a-zA-Z]

Tokens :-
    $white+;
    "true"   {\_ -> TokenTrue}
    "false"  {\_ -> TokenFalse}
    "if"     {\_ -> TokenIf} 
    "then"   {\_ -> TokenThen}
    "else"   {\_ -> TokenElse}
    "0"      {\_ -> TokenZero}
    "succ"   {\_ -> TokenSucc}
    "pred"   {\_ -> TokenPred}
    "iszero" {\_ -> TokenIsZero}
    "("      {\_ -> TokenLP}
    ")"      {\_ -> TokenRP}
{

data Token
    = TokenTrue
    | TokenFalse
    | TokenIf
    | TokenThen
    | TokenElse
    | TokenZero
    | TokenSucc
    | TokenPred
    | TokenIsZero
    | TokenLP
    | TokenRP
    deriving (Show)

}
