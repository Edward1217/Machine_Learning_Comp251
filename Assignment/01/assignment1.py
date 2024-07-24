def sum (a):
    
    initial = - 3
    alph = 0.15

    for i in range(6):
        initial = initial -(alph * (pow(initial,2) + initial -2))
        #initial = initial -(alph*(2*initial)) #for function y = 2x
        #print('initial: {:.3f}'.format(initial))
        print('iniital x^2 + x -2 : {:.3f}'.format(pow(initial,2) + initial -2)) #for function y = x^2 + x -2 


sum(4);

print("hello world")

