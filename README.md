# Newtons Forward Difference MATLAB
A function for interpolating polynomials. 
In other words, you provide an array of X values, and an array of Y values that a certain function will pass through (any function with an upwards trend), so the X and Y values are basically 'points' that you know the function will pass through or 'interpolate', and then this function will return any approximate Y value 'approx_y' at the specified 'x' value. 

![alt text](https://sameradeeb-new.srv.ualberta.ca/wp-content/uploads/Interpolation1.png)

So, for example...
```
X = [1, 2, 3, 4];
Y = [1, 4, 9, 16];

Function is x^2 to interpolate, however we only need to supply points that the function will pass through.

y = interpolating_polynomial(X, Y, 7)
ans = 
    49
```
