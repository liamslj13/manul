module Lexer (Token(..), lexer) where
import Data.Char (isDigit, isAlpha, isAlphaNum, isSpace)
import GHC.Read (readNumber)

data Token = TNum Int
             | TIdent String -- any arbitrary string
             | TPlus         -- +
             | TMinus        -- -
             | TStar         -- *
             | TSlash        -- /
             | TLParen       -- (
             | TRParen       -- )
             | TEquals       -- =
             | TColon
             | TSemicolon         -- ;
             deriving (Show, Eq)

lexer :: String -> [Token]
lexer = tokenize . dropWhile (== ' ')

tokenize :: String -> [Token]
tokenize [] = []
tokenize (c:cs)
    | c == '+' = TPlus : tokenize cs
    | c == '-' = TMinus : tokenize cs
    | c == '*' = TStar : tokenize cs
    | c == '/' = TSlash : tokenize cs
    | c == '(' = TLParen : tokenize cs
    | c == ')' = TRParen : tokenize cs
    | c == ':' = TColon : tokenize cs
    | c == ';' = TSemicolon : tokenize cs
    | c == '=' = TEquals : tokenize cs
    | isDigit c = lexNumber (c:cs)
    | isAlpha c = lexIdent (c:cs)
    | isSpace c = tokenize cs
    | otherwise = error $ "Unexpected character in source: " ++ [c]

lexNumber :: String -> [Token]
lexNumber cs =
    let (numberStr, rest) = span isDigit cs
    in TNum (read numberStr) : tokenize rest

lexIdent :: String -> [Token]
lexIdent cs =
    let (identStr, rest) = span isAlphaNum cs
    in TIdent identStr : tokenize rest