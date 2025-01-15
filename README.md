# Manul
Manul is an interpreted programming language (planned) written in Haskell. 
![manul](images/manul.PNG)

## About Manul
I am using this project as a medium to teach myself about functional programming languages and common syntax that they share. Haskell has good documentation, a large community, and lots of additional resources that can aid the learning process.
I intend to make this project turing complete, with support for all primitive data types, flow-control statements, loops, functions/recursion, and potentially some form of struct or class syntax.
For now, Manul is composed of a half-baked lexer and a REPL interface. 

## Prerequisites
Before you begin, ensure you have met the following software installed:
- [Haskell](https://www.haskell.org/downloads/) (GHC 2021 or later) installed on your machine.
- [Git](https://git-scm.com/) installed to clone the repository.
To check your GHC version, run the following command:
```bash
ghc --version
```
It is also recommended that you install [Cabal](https://www.haskell.org/cabal/) as there will be dependencies.
Ensure cabal is up to date. You can do this similarly to checking your GHC version by running the command:
```bash
cabal --version
```



## Build Manul
Clone the repository to your local machine by running the following command in your terminal. Then cd into the directory:
```bash
git clone https://github.com/liamslj13/manul.git
cd manul
```
Now that you have entered the directory, compile the REPL using GHC and execute the resulting file:
```bash
ghc -isrc src/REPL.hs -o repl
./repl
```
If everything works right, you should be able to view the lexer in action:
```bash
======================================================================
           ███╗░░░███╗░█████╗░███╗░░██╗██╗░░░██╗██╗░░░░░
           ████╗░████║██╔══██╗████╗░██║██║░░░██║██║░░░░░
           ██╔████╔██║███████║██╔██╗██║██║░░░██║██║░░░░░
           ██║╚██╔╝██║██╔══██║██║╚████║██║░░░██║██║░░░░░
           ██║░╚═╝░██║██║░░██║██║░╚███║╚██████╔╝███████╗
           ╚═╝░░░░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝░╚═════╝░╚══════╝
======================================================================
Manul REPL v1.0. Enter source code or type ":q" / ":quit" to exit:
======================================================================
hello
>> [TIdent "hello"]
4 + 5  
>> [TNum 4,TPlus,TNum 5]
:q
>> Exiting REPL. See you next time ~~
```

## Version
***Current:*** v1.0.0
