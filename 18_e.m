%%
%    Complex numbers and Euler's formula
%
%%

%% complex numbers

% components
a =  2; % real part
b = -3; % imaginary part

% method 1: function 'complex'
c1 = complex(a, b);

% method 2: use imaginary operator
c2 = a + i*b;

% using i is a bad idea...
c3 = a + 1i*b;
 i = 3;
c3 = a + i*b;

% 1i is better because:
1i = 3;

%% Euler's formula (one of them...)

% parameters
m = 3; % magnitude, or length of line
p = 2*pi/3; % phase angle

% Euler's formula and its cis equivalent
e1 = m * exp( 1i*p);
e2 = m * (cos(p) + 1i * sin(p) );

% if e1==e2 then their difference is zero
e1 - e2

% recover key parameters (magnitude and phase)
m1 = sqrt(real(e1)^2 + imag(el)^2);  % using Pythagorean theorem
m2 = abs(e1);                        % using MATLAB function

p1 = atan(imag(e1)/real(e1));         % using Pythagorean theorem
p1 = angle(e1);% using MATLAB function

%% law of exponents

p = -4;
q = 3;

e1 = exp(p+q)% e^{p+q}
e2 = exp(p) * exp(q)% (e^p)(e^q)


% if e1==e2 then their difference is zero
e1 - e2
%%
