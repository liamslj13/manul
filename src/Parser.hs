module Parser (parseExpr) where

import Text.Megaparsec
import Text.Megaparsec.Char
import Control.Monad (void)
import Lexer(Token(..), lexer)
import AST (Expr(..))

type Parser = Parsec Void [Token]

parseNumber :: Parser Expr
parseNumber = do
    TNum n <- someToken isTNum
    return (ENum n)

