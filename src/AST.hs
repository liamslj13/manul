module AST (Expr(..)) where

data Expr = ENum Int
          | EVar String
          | EAdd Expr Expr
          | ESub Expr Expr
          | EMul Expr Expr
          | EDiv Expr Expr
          | EParens Expr
          deriving (Show, Eq)