{
module Parser where

import Lexer
}

%name term
%tokentype {Token}
%error {parseError}

%token

    true {TokenTrue}
    false {TokenFalse}
    if {TokenIf}
    then {TokenThen}
    else {TokenElse}
    zero {TokenZero}
    succ {TokenSucc}
    pred {TokenPred}
    iszero {TokenIsZero}
    '('  {TokenLP}
    ')'  {TokenRP}

%%

Term : true {TermTrue}
     | false {TermFalse}
     | if Term then Term else Term {TermIf $2 $4 $6}
     | zero {TermZero}
     | succ Term {TermSucc $2}
     | pred Term {TermPred $2}
     | iszero Term {TermIsZero $2}
     | '(' Term ')' {$2}

{
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
}
