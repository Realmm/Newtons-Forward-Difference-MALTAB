function approx_y = interpolating_polynomial(X, Y, x)
%NEWTON FORWARD DIFFERENCE FORM
%VAL = INTERPOLATING_POLYNOMIAL(X, Y, x), where
%X is the array of X values, Y is the array of Y values,
%so (X, Y) should be a set of points to interpolate,
%and x is the point to approximate the value of approx_y at.
%Returns the approximate value of y at x

if ~(length(Y) > 2)  
    error('Y and X length must be greater than 2 to interpolate');
end

if (length(Y) ~= length(X))
    error('Length X and Y are different');
end

first_value_forward_differences = zeros(length(Y));
first_value_forward_differences(1) = Y(1);

current_array = Y;

for i = 2:length(Y)
    current_array = loop(current_array);
    first_value_forward_differences(i) = current_array(1);
end

function new_array = loop(array)
    new_array = zeros(length(array) - 1);
    
    for a = 1:(length(array)-1)
        new_array(a) = array(a+1) - array(a);
    end
end

h = abs(X(1) - X(2));
s = (x - X(1))/h;

S = s*first_value_forward_differences(2);

for i = 1:(length(first_value_forward_differences)-2)
    s0 = s*(s-i);
    s1 = first_value_forward_differences(i+2);
    s2 = factorial(i+1);
    S = S + ((s0*s1)/s2);
end

approx_y = first_value_forward_differences(1) + S;

end





