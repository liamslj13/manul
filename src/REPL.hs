module Main where

import Lexer (Token(..), lexer)

raccoon :: String
raccoon ="\
\======================================================================\n\
\           ███╗░░░███╗░█████╗░███╗░░██╗██╗░░░██╗██╗░░░░░\n\
\           ████╗░████║██╔══██╗████╗░██║██║░░░██║██║░░░░░\n\
\           ██╔████╔██║███████║██╔██╗██║██║░░░██║██║░░░░░\n\
\           ██║╚██╔╝██║██╔══██║██║╚████║██║░░░██║██║░░░░░\n\
\           ██║░╚═╝░██║██║░░██║██║░╚███║╚██████╔╝███████╗\n\
\           ╚═╝░░░░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝░╚═════╝░╚══════╝\n"


repl :: IO ()
repl = do
    putStr raccoon
    putStrLn "======================================================================"
    putStrLn "Manul REPL v1.0. Enter source code or type \":q\" / \":quit\" to exit:"
    putStrLn "======================================================================"
    loop
  where
    loop = do
        putStr ">> "
        input <- getLine
        case input of
            ":q" -> putStrLn "Exiting REPL. See you next time ~~"
            ":quit" -> putStrLn "Exiting REPL. See you next time ~~"
            _       -> do
                print (lexer input)
                loop

main :: IO ()
main = repl