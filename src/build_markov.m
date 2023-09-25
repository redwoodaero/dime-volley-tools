% State vector:
% s (serve)
% h (outside IS attack)
% m (middle IS attack)
% i (OOS attack)
% c (continue play e.g. freeball)
% b (block)
% o (overpass)
% 1 (1st touch attack)
% e (error committed)
% p (point scored)

% s_{i+1} = 0.00;
% h_{i+1} = 0.29*s_{i} + 0.15*h_{i} + 0.05*m_{i} + 0.32*i_{i} + 0.48*c_{i} + 0.20*b_{i} + 0.33*o_{i} + 0.14*one_{i};
% m_{i+1} = 0.17*s_{i} + 0.04*h_{i} + 0.02*m_{i} + 0.03*i_{i} + 0.25*c_{i} + 0.00*b_{i} + 0.00*o_{i} + 0.00*one_{i};
% i_{i+1} = 0.12*s_{i} + 0.09*h_{i} + 0.12*m_{i} + 0.10*i_{i} + 0.10*c_{i} + 0.07*b_{i} + 0.07*o_{i} + 0.14*one_{i};
% c_{i+1} = 0.15*s_{i} + 0.13*h_{i} + 0.07*m_{i} + 0.08*i_{i} + 0.03*c_{i} + 0.20*b_{i} + 0.00*o_{i} + 0.14*one_{i};
% b_{i+1} = 0.00*s_{i} + 0.15*h_{i} + 0.20*m_{i} + 0.08*i_{i} + 0.01*c_{i} + 0.00*b_{i} + 0.00*o_{i} + 0.00*one_{i};
% o_{i+1} = 0.04*s_{i} + 0.01*h_{i} + 0.02*m_{i} + 0.02*i_{i} + 0.01*c_{i} + 0.07*b_{i} + 0.00*o_{i} + 0.07*one_{i};
% one_{i+1} = 0.0*s_{i} + 0.01*h_{i} + 0.0*m_{i} + 0.02*i_{i} + 0.04*c_{i} + 0.02*b_{i} + 0.53*o_{i} + 0.00*one_{i};
% e_{i+1} = 0.14*s_{i} + 0.13*h_{i} + 0.22*m_{i} + 0.16*i_{i} + 0.07*c_{i} + 0.02*b_{i} + 0.07*o_{i} + 0.21*one_{i} + 1.0*e{i} + 0.0*p{i};
% p_{i+1} = 0.12*s_{i} + 0.31*h_{i} + 0.31*m_{i} + 0.19*i_{i} + 0.00*c_{i} + 0.41*b_{i} + 0.07*o_{i} + 0.29*one_{i} + 0.0*e{i} + 1.0*p{i};

% Need a way to generate this programmatically.
T = [ ...
   0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00,      0.00, 0.05, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00; % s
   0.29, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00,      0.15, 0.05, 0.32, 0.48, 0.20, 0.33, 0.14, 0.00, 0.00; % rh
   0.17, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00,      0.04, 0.02, 0.03, 0.25, 0.00, 0.00, 0.00, 0.00, 0.00; % rm
   0.12, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00,      0.09, 0.12, 0.10, 0.10, 0.07, 0.07, 0.14, 0.00, 0.00; % ri
   0.15, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00,      0.13, 0.07, 0.08, 0.03, 0.20, 0.00, 0.14, 0.00, 0.00; % rc
   0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00,      0.15, 0.20, 0.08, 0.01, 0.00, 0.00, 0.00, 0.00, 0.00; % rb
   0.04, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00,      0.01, 0.02, 0.02, 0.01, 0.07, 0.00, 0.07, 0.00, 0.00; % ro
   0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00,      0.01, 0.00, 0.02, 0.04, 0.02, 0.53, 0.00, 0.00, 0.00; % r1
   0.00, 0.13, 0.22, 0.16, 0.07, 0.02, 0.07, 0.21, 1.00, 0.00,      0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00; % re
   0.00, 0.31, 0.31, 0.19, 0.00, 0.41, 0.07, 0.29, 0.00, 1.00,      0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00; % rp

   0.00, 0.15, 0.05, 0.32, 0.48, 0.20, 0.33, 0.14, 0.00, 0.00,      0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00; % sh
   0.00, 0.04, 0.02, 0.03, 0.25, 0.00, 0.00, 0.00, 0.00, 0.00,      0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00; % sm
   0.00, 0.09, 0.12, 0.10, 0.10, 0.07, 0.07, 0.14, 0.00, 0.00,      0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00; % si
   0.00, 0.13, 0.07, 0.08, 0.03, 0.20, 0.00, 0.14, 0.00, 0.00,      0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00; % sc
   0.00, 0.15, 0.20, 0.08, 0.01, 0.00, 0.00, 0.00, 0.00, 0.00,      0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00; % sb
   0.00, 0.01, 0.02, 0.02, 0.01, 0.07, 0.00, 0.07, 0.00, 0.00,      0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00; % so
   0.00, 0.01, 0.00, 0.02, 0.04, 0.02, 0.53, 0.00, 0.00, 0.00,      0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00; % s1
   0.14, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00,      0.13, 0.22, 0.16, 0.07, 0.02, 0.07, 0.21, 1.00, 0.00; % se
   0.12, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00,      0.31, 0.31, 0.19, 0.00, 0.41, 0.07, 0.29, 0.00, 1.00; % sp
];

% Do spectral decompostion on this matrix T = V D V^-1; raise D to a high power (10000+), then 

%{
re(inf)   0.1713    0.2101    0.2853    0.2438  0.1725    0.1131    0.1679    0.2908 |    0.1088    0.0921  0.1322    0.2162    0.1111    0.2405  0.0994
rp(inf)   0.2979    0.4682    0.4353    0.3627  0.2283    0.5919    0.2588    0.4492 |    0.2458    0.2301  0.2789    0.4032    0.1918    0.4180  0.1664
            
%}

%{

se(inf)  0.2444    0.1092    0.0838    0.1325  0.2193    0.1108    0.2409    0.0992  |   0.2102    0.2976  0.2439    0.1707    0.1138    0.1679  0.2914
sp(inf)  0.3394    0.2462    0.2155    0.2792  0.4073    0.1911    0.4183    0.1659  |   0.4681    0.4522  0.3627    0.2249    0.5928    0.2587  0.4499
%}

%{
Probabilities
        s     rh        rm       ri       rc       rb      ro        r1       re      rp        sh       sm       si       sc       sb       so      s1       se      sp
sp   0.5106   0.4563   0.5008   0.5230   0.5797   0.3042   0.5862   0.4568  1.0000        0   0.5770   0.5443   0.4949   0.4411   0.7040   0.4993  0.5493        0   1.0000
rp   0.5423   0.5775   0.5191   0.4953   0.4475   0.7028   0.4997   0.5484       0   1.0000   0.4560   0.5277   0.5229   0.5739   0.3056   0.5859  0.4578   1.0000        0
   
Expected points (= 2*p - 1)
ans =

 Columns 1 through 3:

     0.0212    -0.0874  0.0016  0.046     0.1594     -0.3915        0.1724  -0.0864   1    -1      0.153     0.0886
     0.0846     0.155   0.0382  -0.0093   -0.105     0.4056   -0.0006  0.0968         -1  1    -0.0879     0.0553

    -0.01019999999999999                 -0.1178      0.4079999999999999
     0.04580000000000006      0.1477999999999999                 -0.3888

 Columns 16 through 18:

   -0.001399999999999957     0.09860000000000002                      -1
                  0.1718    -0.08440000000000003                       1

 Column 19:

                       1
                      -1   
%}