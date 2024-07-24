

def equation (a,b,c, initial,iteration,alpha):
    x = initial
    y = a *pow(x,2) + b * x + c
    print('initial θ: {:.4f}'.format(x))
    print('j(θ): {:.4f}'.format(y))
    x = x - alpha * y
    for i in range(1,iteration+1):
        y = a *pow(x,2) + b * x + c
        print('{} θ: {:.4f}'.format(i,x))
        print('{} j(θ): {:.4f}'.format(i,y))
        x = x - alpha * y


equation(1,1,-2,-3,6,0.15)



