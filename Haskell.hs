f n|n`mod`3<1="Fizz"++b(-n)|1>0=b n
b n|n`mod`5<1="Buzz"|n<0=""|1>0=show n
main=mapM(print.f)[1..100]
