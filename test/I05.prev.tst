2;x;y;z; 0 0 0; var. set not primitive! x_1^2 + y_1^2 - z_1^2
2;x;y;z; 1 0 0; varGCD=4 no mod constant! 1 + 4*x_1 + 4*x_1^2 + 4*y_1^2 - 4*z_1^2
2;x;y;z; 0 1 0; varGCD=4 no mod constant! 1 + 4*x_1^2 + 4*y_1 + 4*y_1^2 - 4*z_1^2
2;x;y;z; 1 1 0; varGCD=2 no mod constant! 1 + 2*x_1 + 2*x_1^2 + 2*y_1 + 2*y_1^2 - 2*z_1^2
2;x;y;z; 0 0 1; varGCD=4 no mod constant!  - 1 + 4*x_1^2 + 4*y_1^2 - 4*z_1 - 4*z_1^2
2;x;y;z; 1 0 1; variables only? x_1 + x_1^2 + y_1^2 - z_1 - z_1^2
  2;x_1;y_1;z_1; 0 0 0; var. set not primitive! x_2 + 2*x_2^2 + 2*y_2^2 - z_2 - 2*z_2^2
  2;x_1;y_1;z_1; 1 0 0; no varGCD? 1 + 3*x_2 + 2*x_2^2 + 2*y_2^2 - z_2 - 2*z_2^2 overflow!
  2;x_1;y_1;z_1; 0 1 0; varGCD=2 no mod constant! 1 + 2*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 2*z_2 - 4*z_2^2
  2;x_1;y_1;z_1; 1 1 0; varGCD=2 no mod constant! 3 + 6*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 2*z_2 - 4*z_2^2
  2;x_1;y_1;z_1; 0 0 1; no varGCD?  - 1 + x_2 + 2*x_2^2 + 2*y_2^2 - 3*z_2 - 2*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 0 1; variables only? 3*x_2 + 2*x_2^2 + 2*y_2^2 - 3*z_2 - 2*z_2^2 overflow!
  2;x_1;y_1;z_1; 0 1 1; varGCD=2 no mod constant!  - 1 + 2*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 6*z_2 - 4*z_2^2
  2;x_1;y_1;z_1; 1 1 1; varGCD=2 no mod constant! 1 + 6*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 6*z_2 - 4*z_2^2

  3;x_1;y_1;z_1; 0 0 0; var. set not primitive! x_2 + 3*x_2^2 + 3*y_2^2 - z_2 - 3*z_2^2
  3;x_1;y_1;z_1; 1 0 0; varGCD=3 no mod constant! 2 + 9*x_2 + 9*x_2^2 + 9*y_2^2 - 3*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 2 0 0; no varGCD? 2 + 5*x_2 + 3*x_2^2 + 3*y_2^2 - z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 1 0; varGCD=3 no mod constant! 1 + 3*x_2 + 9*x_2^2 + 6*y_2 + 9*y_2^2 - 3*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 1 0; no varGCD? 1 + 3*x_2 + 3*x_2^2 + 2*y_2 + 3*y_2^2 - z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 1 0; varGCD=3 no mod constant! 7 + 15*x_2 + 9*x_2^2 + 6*y_2 + 9*y_2^2 - 3*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 0 2 0; varGCD=3 no mod constant! 4 + 3*x_2 + 9*x_2^2 + 12*y_2 + 9*y_2^2 - 3*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 2 0; no varGCD? 2 + 3*x_2 + 3*x_2^2 + 4*y_2 + 3*y_2^2 - z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 2 0; varGCD=3 no mod constant! 10 + 15*x_2 + 9*x_2^2 + 12*y_2 + 9*y_2^2 - 3*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 0 0 1; varGCD=3 no mod constant!  - 2 + 3*x_2 + 9*x_2^2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 0 1; variables only? INFINITE DESCENT: 2 -> 1 <---------- x_1 + x_1^2 + y_1^2 - z_1 - z_1^2 <equiv>  x_2 + x_2^2 + y_2^2 - z_2 - z_2^2
  3;x_1;y_1;z_1; 2 0 1; varGCD=3 no mod constant! 4 + 15*x_2 + 9*x_2^2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 0 1 1; varGCD=3 no mod constant!  - 1 + 3*x_2 + 9*x_2^2 + 6*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 1 1; varGCD=3 no mod constant! 1 + 9*x_2 + 9*x_2^2 + 6*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 2 1 1; varGCD=3 no mod constant! 5 + 15*x_2 + 9*x_2^2 + 6*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 0 2 1; varGCD=3 no mod constant! 2 + 3*x_2 + 9*x_2^2 + 12*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 2 1; varGCD=3 no mod constant! 4 + 9*x_2 + 9*x_2^2 + 12*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 2 2 1; varGCD=3 no mod constant! 8 + 15*x_2 + 9*x_2^2 + 12*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 0 0 2; no varGCD?  - 2 + x_2 + 3*x_2^2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 0 2; varGCD=3 no mod constant!  - 4 + 9*x_2 + 9*x_2^2 + 9*y_2^2 - 15*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 2 0 2; variables only? 5*x_2 + 3*x_2^2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 1 2; varGCD=3 no mod constant!  - 5 + 3*x_2 + 9*x_2^2 + 6*y_2 + 9*y_2^2 - 15*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 1 2; no varGCD?  - 1 + 3*x_2 + 3*x_2^2 + 2*y_2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 1 2; varGCD=3 no mod constant! 1 + 15*x_2 + 9*x_2^2 + 6*y_2 + 9*y_2^2 - 15*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 0 2 2; varGCD=3 no mod constant!  - 2 + 3*x_2 + 9*x_2^2 + 12*y_2 + 9*y_2^2 - 15*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 2 2; variables only? 3*x_2 + 3*x_2^2 + 4*y_2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 2 2; varGCD=3 no mod constant! 4 + 15*x_2 + 9*x_2^2 + 12*y_2 + 9*y_2^2 - 15*z_2 - 9*z_2^2

  4;x_1;y_1;z_1; 0 0 0; var. set not primitive! x_2 + 4*x_2^2 + 4*y_2^2 - z_2 - 4*z_2^2
  4;x_1;y_1;z_1; 1 0 0; varGCD=2 no mod constant! 1 + 6*x_2 + 8*x_2^2 + 8*y_2^2 - 2*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 2 0 0; varGCD=2 no mod constant! 3 + 10*x_2 + 8*x_2^2 + 8*y_2^2 - 2*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 3 0 0; no varGCD? 3 + 7*x_2 + 4*x_2^2 + 4*y_2^2 - z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 1 0; varGCD=4 no mod constant! 1 + 4*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 1 0; varGCD=4 no mod constant! 3 + 12*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 1 0; varGCD=4 no mod constant! 7 + 20*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 1 0; varGCD=4 no mod constant! 13 + 28*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 2 0; no varGCD? 1 + x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 2 0; varGCD=2 no mod constant! 3 + 6*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 2*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 2 2 0; varGCD=2 no mod constant! 5 + 10*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 2*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 3 2 0; no varGCD? 4 + 7*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 3 0; varGCD=4 no mod constant! 9 + 4*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 3 0; varGCD=4 no mod constant! 11 + 12*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 3 0; varGCD=4 no mod constant! 15 + 20*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 3 0; varGCD=4 no mod constant! 21 + 28*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 0 1; varGCD=2 no mod constant!  - 1 + 2*x_2 + 8*x_2^2 + 8*y_2^2 - 6*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 0 1; variables only? 3*x_2 + 4*x_2^2 + 4*y_2^2 - 3*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 0 1; no varGCD? 1 + 5*x_2 + 4*x_2^2 + 4*y_2^2 - 3*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 0 1; varGCD=2 no mod constant! 5 + 14*x_2 + 8*x_2^2 + 8*y_2^2 - 6*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 0 1 1; varGCD=4 no mod constant!  - 1 + 4*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 1 1; varGCD=4 no mod constant! 1 + 12*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 1 1; varGCD=4 no mod constant! 5 + 20*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 1 1; varGCD=4 no mod constant! 11 + 28*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 2 1; varGCD=2 no mod constant! 1 + 2*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 6*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 2 1; no varGCD? 1 + 3*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 3*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 2 1; no varGCD? 2 + 5*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 3*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 2 1; varGCD=2 no mod constant! 7 + 14*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 6*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 0 3 1; varGCD=4 no mod constant! 7 + 4*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 3 1; varGCD=4 no mod constant! 9 + 12*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 3 1; varGCD=4 no mod constant! 13 + 20*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 3 1; varGCD=4 no mod constant! 19 + 28*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 0 2; varGCD=2 no mod constant!  - 3 + 2*x_2 + 8*x_2^2 + 8*y_2^2 - 10*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 0 2; no varGCD?  - 1 + 3*x_2 + 4*x_2^2 + 4*y_2^2 - 5*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 0 2; variables only? 5*x_2 + 4*x_2^2 + 4*y_2^2 - 5*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 0 2; varGCD=2 no mod constant! 3 + 14*x_2 + 8*x_2^2 + 8*y_2^2 - 10*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 0 1 2; varGCD=4 no mod constant!  - 5 + 4*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 1 2; varGCD=4 no mod constant!  - 3 + 12*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 1 2; varGCD=4 no mod constant! 1 + 20*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 1 2; varGCD=4 no mod constant! 7 + 28*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 2 2; varGCD=2 no mod constant!  - 1 + 2*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 10*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 2 2; variables only? 3*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 5*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 2 2; no varGCD? 1 + 5*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 5*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 2 2; varGCD=2 no mod constant! 5 + 14*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 10*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 0 3 2; varGCD=4 no mod constant! 3 + 4*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 3 2; varGCD=4 no mod constant! 5 + 12*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 3 2; varGCD=4 no mod constant! 9 + 20*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 3 2; varGCD=4 no mod constant! 15 + 28*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 0 3; no varGCD?  - 3 + x_2 + 4*x_2^2 + 4*y_2^2 - 7*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 0 3; varGCD=2 no mod constant!  - 5 + 6*x_2 + 8*x_2^2 + 8*y_2^2 - 14*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 2 0 3; varGCD=2 no mod constant!  - 3 + 10*x_2 + 8*x_2^2 + 8*y_2^2 - 14*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 3 0 3; variables only? 7*x_2 + 4*x_2^2 + 4*y_2^2 - 7*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 1 3; varGCD=4 no mod constant!  - 11 + 4*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 1 3; varGCD=4 no mod constant!  - 9 + 12*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 1 3; varGCD=4 no mod constant!  - 5 + 20*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 1 3; varGCD=4 no mod constant! 1 + 28*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 2 3; no varGCD?  - 2 + x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 7*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 2 3; varGCD=2 no mod constant!  - 3 + 6*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 14*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 2 2 3; varGCD=2 no mod constant!  - 1 + 10*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 14*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 3 2 3; no varGCD? 1 + 7*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 7*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 3 3; varGCD=4 no mod constant!  - 3 + 4*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 3 3; varGCD=4 no mod constant!  - 1 + 12*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 3 3; varGCD=4 no mod constant! 3 + 20*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 3 3; varGCD=4 no mod constant! 9 + 28*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2

2;x;y;z; 0 1 1; variables only? x_1^2 + y_1 + y_1^2 - z_1 - z_1^2
  2;x_1;y_1;z_1; 0 0 0; var. set not primitive! 2*x_2^2 + y_2 + 2*y_2^2 - z_2 - 2*z_2^2
  2;x_1;y_1;z_1; 1 0 0; varGCD=2 no mod constant! 1 + 4*x_2 + 4*x_2^2 + 2*y_2 + 4*y_2^2 - 2*z_2 - 4*z_2^2
  2;x_1;y_1;z_1; 0 1 0; no varGCD? 1 + 2*x_2^2 + 3*y_2 + 2*y_2^2 - z_2 - 2*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 1 0; varGCD=2 no mod constant! 3 + 4*x_2 + 4*x_2^2 + 6*y_2 + 4*y_2^2 - 2*z_2 - 4*z_2^2
  2;x_1;y_1;z_1; 0 0 1; no varGCD?  - 1 + 2*x_2^2 + y_2 + 2*y_2^2 - 3*z_2 - 2*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 0 1; varGCD=2 no mod constant!  - 1 + 4*x_2 + 4*x_2^2 + 2*y_2 + 4*y_2^2 - 6*z_2 - 4*z_2^2
  2;x_1;y_1;z_1; 0 1 1; variables only? 2*x_2^2 + 3*y_2 + 2*y_2^2 - 3*z_2 - 2*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 1 1; varGCD=2 no mod constant! 1 + 4*x_2 + 4*x_2^2 + 6*y_2 + 4*y_2^2 - 6*z_2 - 4*z_2^2

  3;x_1;y_1;z_1; 0 0 0; var. set not primitive! 3*x_2^2 + y_2 + 3*y_2^2 - z_2 - 3*z_2^2
  3;x_1;y_1;z_1; 1 0 0; varGCD=3 no mod constant! 1 + 6*x_2 + 9*x_2^2 + 3*y_2 + 9*y_2^2 - 3*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 2 0 0; varGCD=3 no mod constant! 4 + 12*x_2 + 9*x_2^2 + 3*y_2 + 9*y_2^2 - 3*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 0 1 0; varGCD=3 no mod constant! 2 + 9*x_2^2 + 9*y_2 + 9*y_2^2 - 3*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 1 0; no varGCD? 1 + 2*x_2 + 3*x_2^2 + 3*y_2 + 3*y_2^2 - z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 1 0; no varGCD? 2 + 4*x_2 + 3*x_2^2 + 3*y_2 + 3*y_2^2 - z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 2 0; no varGCD? 2 + 3*x_2^2 + 5*y_2 + 3*y_2^2 - z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 2 0; varGCD=3 no mod constant! 7 + 6*x_2 + 9*x_2^2 + 15*y_2 + 9*y_2^2 - 3*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 2 2 0; varGCD=3 no mod constant! 10 + 12*x_2 + 9*x_2^2 + 15*y_2 + 9*y_2^2 - 3*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 0 0 1; varGCD=3 no mod constant!  - 2 + 9*x_2^2 + 3*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 0 1; varGCD=3 no mod constant!  - 1 + 6*x_2 + 9*x_2^2 + 3*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 2 0 1; varGCD=3 no mod constant! 2 + 12*x_2 + 9*x_2^2 + 3*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 0 1 1; variables only? INFINITE DESCENT: 2 -> 1 <---------- x_1^2 + y_1 + y_1^2 - z_1 - z_1^2 <equiv>  x_2^2 + y_2 + y_2^2 - z_2 - z_2^2
  3;x_1;y_1;z_1; 1 1 1; varGCD=3 no mod constant! 1 + 6*x_2 + 9*x_2^2 + 9*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 2 1 1; varGCD=3 no mod constant! 4 + 12*x_2 + 9*x_2^2 + 9*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 0 2 1; varGCD=3 no mod constant! 4 + 9*x_2^2 + 15*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 2 1; varGCD=3 no mod constant! 5 + 6*x_2 + 9*x_2^2 + 15*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 2 2 1; varGCD=3 no mod constant! 8 + 12*x_2 + 9*x_2^2 + 15*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 0 0 2; no varGCD?  - 2 + 3*x_2^2 + y_2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 0 2; varGCD=3 no mod constant!  - 5 + 6*x_2 + 9*x_2^2 + 3*y_2 + 9*y_2^2 - 15*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 2 0 2; varGCD=3 no mod constant!  - 2 + 12*x_2 + 9*x_2^2 + 3*y_2 + 9*y_2^2 - 15*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 0 1 2; varGCD=3 no mod constant!  - 4 + 9*x_2^2 + 9*y_2 + 9*y_2^2 - 15*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 1 2; no varGCD?  - 1 + 2*x_2 + 3*x_2^2 + 3*y_2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 1 2; variables only? 4*x_2 + 3*x_2^2 + 3*y_2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 2 2; variables only? 3*x_2^2 + 5*y_2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 2 2; varGCD=3 no mod constant! 1 + 6*x_2 + 9*x_2^2 + 15*y_2 + 9*y_2^2 - 15*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 2 2 2; varGCD=3 no mod constant! 4 + 12*x_2 + 9*x_2^2 + 15*y_2 + 9*y_2^2 - 15*z_2 - 9*z_2^2

  4;x_1;y_1;z_1; 0 0 0; var. set not primitive! 4*x_2^2 + y_2 + 4*y_2^2 - z_2 - 4*z_2^2
  4;x_1;y_1;z_1; 1 0 0; varGCD=4 no mod constant! 1 + 8*x_2 + 16*x_2^2 + 4*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 0 0; no varGCD? 1 + 4*x_2 + 4*x_2^2 + y_2 + 4*y_2^2 - z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 0 0; varGCD=4 no mod constant! 9 + 24*x_2 + 16*x_2^2 + 4*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 1 0; varGCD=2 no mod constant! 1 + 8*x_2^2 + 6*y_2 + 8*y_2^2 - 2*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 1 0; varGCD=4 no mod constant! 3 + 8*x_2 + 16*x_2^2 + 12*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 1 0; varGCD=2 no mod constant! 3 + 8*x_2 + 8*x_2^2 + 6*y_2 + 8*y_2^2 - 2*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 3 1 0; varGCD=4 no mod constant! 11 + 24*x_2 + 16*x_2^2 + 12*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 2 0; varGCD=2 no mod constant! 3 + 8*x_2^2 + 10*y_2 + 8*y_2^2 - 2*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 2 0; varGCD=4 no mod constant! 7 + 8*x_2 + 16*x_2^2 + 20*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 2 0; varGCD=2 no mod constant! 5 + 8*x_2 + 8*x_2^2 + 10*y_2 + 8*y_2^2 - 2*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 3 2 0; varGCD=4 no mod constant! 15 + 24*x_2 + 16*x_2^2 + 20*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 3 0; no varGCD? 3 + 4*x_2^2 + 7*y_2 + 4*y_2^2 - z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 3 0; varGCD=4 no mod constant! 13 + 8*x_2 + 16*x_2^2 + 28*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 3 0; no varGCD? 4 + 4*x_2 + 4*x_2^2 + 7*y_2 + 4*y_2^2 - z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 3 0; varGCD=4 no mod constant! 21 + 24*x_2 + 16*x_2^2 + 28*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 0 1; varGCD=2 no mod constant!  - 1 + 8*x_2^2 + 2*y_2 + 8*y_2^2 - 6*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 0 1; varGCD=4 no mod constant!  - 1 + 8*x_2 + 16*x_2^2 + 4*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 0 1; varGCD=2 no mod constant! 1 + 8*x_2 + 8*x_2^2 + 2*y_2 + 8*y_2^2 - 6*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 3 0 1; varGCD=4 no mod constant! 7 + 24*x_2 + 16*x_2^2 + 4*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 1 1; variables only? 4*x_2^2 + 3*y_2 + 4*y_2^2 - 3*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 1 1; varGCD=4 no mod constant! 1 + 8*x_2 + 16*x_2^2 + 12*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 1 1; no varGCD? 1 + 4*x_2 + 4*x_2^2 + 3*y_2 + 4*y_2^2 - 3*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 1 1; varGCD=4 no mod constant! 9 + 24*x_2 + 16*x_2^2 + 12*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 2 1; no varGCD? 1 + 4*x_2^2 + 5*y_2 + 4*y_2^2 - 3*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 2 1; varGCD=4 no mod constant! 5 + 8*x_2 + 16*x_2^2 + 20*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 2 1; no varGCD? 2 + 4*x_2 + 4*x_2^2 + 5*y_2 + 4*y_2^2 - 3*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 2 1; varGCD=4 no mod constant! 13 + 24*x_2 + 16*x_2^2 + 20*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 3 1; varGCD=2 no mod constant! 5 + 8*x_2^2 + 14*y_2 + 8*y_2^2 - 6*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 3 1; varGCD=4 no mod constant! 11 + 8*x_2 + 16*x_2^2 + 28*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 3 1; varGCD=2 no mod constant! 7 + 8*x_2 + 8*x_2^2 + 14*y_2 + 8*y_2^2 - 6*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 3 3 1; varGCD=4 no mod constant! 19 + 24*x_2 + 16*x_2^2 + 28*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 0 2; varGCD=2 no mod constant!  - 3 + 8*x_2^2 + 2*y_2 + 8*y_2^2 - 10*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 0 2; varGCD=4 no mod constant!  - 5 + 8*x_2 + 16*x_2^2 + 4*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 0 2; varGCD=2 no mod constant!  - 1 + 8*x_2 + 8*x_2^2 + 2*y_2 + 8*y_2^2 - 10*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 3 0 2; varGCD=4 no mod constant! 3 + 24*x_2 + 16*x_2^2 + 4*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 1 2; no varGCD?  - 1 + 4*x_2^2 + 3*y_2 + 4*y_2^2 - 5*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 1 2; varGCD=4 no mod constant!  - 3 + 8*x_2 + 16*x_2^2 + 12*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 1 2; variables only? 4*x_2 + 4*x_2^2 + 3*y_2 + 4*y_2^2 - 5*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 1 2; varGCD=4 no mod constant! 5 + 24*x_2 + 16*x_2^2 + 12*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 2 2; variables only? 4*x_2^2 + 5*y_2 + 4*y_2^2 - 5*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 2 2; varGCD=4 no mod constant! 1 + 8*x_2 + 16*x_2^2 + 20*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 2 2; no varGCD? 1 + 4*x_2 + 4*x_2^2 + 5*y_2 + 4*y_2^2 - 5*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 2 2; varGCD=4 no mod constant! 9 + 24*x_2 + 16*x_2^2 + 20*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 3 2; varGCD=2 no mod constant! 3 + 8*x_2^2 + 14*y_2 + 8*y_2^2 - 10*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 3 2; varGCD=4 no mod constant! 7 + 8*x_2 + 16*x_2^2 + 28*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 3 2; varGCD=2 no mod constant! 5 + 8*x_2 + 8*x_2^2 + 14*y_2 + 8*y_2^2 - 10*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 3 3 2; varGCD=4 no mod constant! 15 + 24*x_2 + 16*x_2^2 + 28*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 0 3; no varGCD?  - 3 + 4*x_2^2 + y_2 + 4*y_2^2 - 7*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 0 3; varGCD=4 no mod constant!  - 11 + 8*x_2 + 16*x_2^2 + 4*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 0 3; no varGCD?  - 2 + 4*x_2 + 4*x_2^2 + y_2 + 4*y_2^2 - 7*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 0 3; varGCD=4 no mod constant!  - 3 + 24*x_2 + 16*x_2^2 + 4*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 1 3; varGCD=2 no mod constant!  - 5 + 8*x_2^2 + 6*y_2 + 8*y_2^2 - 14*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 1 3; varGCD=4 no mod constant!  - 9 + 8*x_2 + 16*x_2^2 + 12*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 1 3; varGCD=2 no mod constant!  - 3 + 8*x_2 + 8*x_2^2 + 6*y_2 + 8*y_2^2 - 14*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 3 1 3; varGCD=4 no mod constant!  - 1 + 24*x_2 + 16*x_2^2 + 12*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 2 3; varGCD=2 no mod constant!  - 3 + 8*x_2^2 + 10*y_2 + 8*y_2^2 - 14*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 2 3; varGCD=4 no mod constant!  - 5 + 8*x_2 + 16*x_2^2 + 20*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 2 3; varGCD=2 no mod constant!  - 1 + 8*x_2 + 8*x_2^2 + 10*y_2 + 8*y_2^2 - 14*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 3 2 3; varGCD=4 no mod constant! 3 + 24*x_2 + 16*x_2^2 + 20*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 3 3; variables only? 4*x_2^2 + 7*y_2 + 4*y_2^2 - 7*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 3 3; varGCD=4 no mod constant! 1 + 8*x_2 + 16*x_2^2 + 28*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 3 3; no varGCD? 1 + 4*x_2 + 4*x_2^2 + 7*y_2 + 4*y_2^2 - 7*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 3 3; varGCD=4 no mod constant! 9 + 24*x_2 + 16*x_2^2 + 28*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2

2;x;y;z; 1 1 1; varGCD=4 no mod constant! 1 + 4*x_1 + 4*x_1^2 + 4*y_1 + 4*y_1^2 - 4*z_1 - 4*z_1^2

3;x;y;z; 0 0 0; var. set not primitive! x_1^2 + y_1^2 - z_1^2
3;x;y;z; 1 0 0; varGCD=3 no mod constant! 1 + 6*x_1 + 9*x_1^2 + 9*y_1^2 - 9*z_1^2
3;x;y;z; 2 0 0; varGCD=3 no mod constant! 4 + 12*x_1 + 9*x_1^2 + 9*y_1^2 - 9*z_1^2
3;x;y;z; 0 1 0; varGCD=3 no mod constant! 1 + 9*x_1^2 + 6*y_1 + 9*y_1^2 - 9*z_1^2
3;x;y;z; 1 1 0; varGCD=3 no mod constant! 2 + 6*x_1 + 9*x_1^2 + 6*y_1 + 9*y_1^2 - 9*z_1^2
3;x;y;z; 2 1 0; varGCD=3 no mod constant! 5 + 12*x_1 + 9*x_1^2 + 6*y_1 + 9*y_1^2 - 9*z_1^2
3;x;y;z; 0 2 0; varGCD=3 no mod constant! 4 + 9*x_1^2 + 12*y_1 + 9*y_1^2 - 9*z_1^2
3;x;y;z; 1 2 0; varGCD=3 no mod constant! 5 + 6*x_1 + 9*x_1^2 + 12*y_1 + 9*y_1^2 - 9*z_1^2
3;x;y;z; 2 2 0; varGCD=3 no mod constant! 8 + 12*x_1 + 9*x_1^2 + 12*y_1 + 9*y_1^2 - 9*z_1^2
3;x;y;z; 0 0 1; varGCD=3 no mod constant!  - 1 + 9*x_1^2 + 9*y_1^2 - 6*z_1 - 9*z_1^2
3;x;y;z; 1 0 1; variables only? 2*x_1 + 3*x_1^2 + 3*y_1^2 - 2*z_1 - 3*z_1^2
  2;x_1;y_1;z_1; 0 0 0; var. set not primitive! x_2 + 3*x_2^2 + 3*y_2^2 - z_2 - 3*z_2^2
  2;x_1;y_1;z_1; 1 0 0; varGCD=4 no mod constant! 5 + 16*x_2 + 12*x_2^2 + 12*y_2^2 - 4*z_2 - 12*z_2^2
  2;x_1;y_1;z_1; 0 1 0; varGCD=4 no mod constant! 3 + 4*x_2 + 12*x_2^2 + 12*y_2 + 12*y_2^2 - 4*z_2 - 12*z_2^2
  2;x_1;y_1;z_1; 1 1 0; no varGCD? 2 + 4*x_2 + 3*x_2^2 + 3*y_2 + 3*y_2^2 - z_2 - 3*z_2^2 overflow!
  2;x_1;y_1;z_1; 0 0 1; varGCD=4 no mod constant!  - 5 + 4*x_2 + 12*x_2^2 + 12*y_2^2 - 16*z_2 - 12*z_2^2
  2;x_1;y_1;z_1; 1 0 1; variables only? 4*x_2 + 3*x_2^2 + 3*y_2^2 - 4*z_2 - 3*z_2^2 overflow!
  2;x_1;y_1;z_1; 0 1 1; varGCD=2 no mod constant!  - 1 + 2*x_2 + 6*x_2^2 + 6*y_2 + 6*y_2^2 - 8*z_2 - 6*z_2^2
  2;x_1;y_1;z_1; 1 1 1; varGCD=4 no mod constant! 3 + 16*x_2 + 12*x_2^2 + 12*y_2 + 12*y_2^2 - 16*z_2 - 12*z_2^2

  3;x_1;y_1;z_1; 0 0 0; var. set not primitive! 2*x_2 + 9*x_2^2 + 9*y_2^2 - 2*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 0 0; varGCD=3 no mod constant! 5 + 24*x_2 + 27*x_2^2 + 27*y_2^2 - 6*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 0 0; varGCD=3 no mod constant! 16 + 42*x_2 + 27*x_2^2 + 27*y_2^2 - 6*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 1 0; no varGCD? 1 + 2*x_2 + 9*x_2^2 + 6*y_2 + 9*y_2^2 - 2*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 1 0; varGCD=3 no mod constant! 8 + 24*x_2 + 27*x_2^2 + 18*y_2 + 27*y_2^2 - 6*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 1 0; varGCD=3 no mod constant! 19 + 42*x_2 + 27*x_2^2 + 18*y_2 + 27*y_2^2 - 6*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 2 0; no varGCD? 4 + 2*x_2 + 9*x_2^2 + 12*y_2 + 9*y_2^2 - 2*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 2 0; varGCD=3 no mod constant! 17 + 24*x_2 + 27*x_2^2 + 36*y_2 + 27*y_2^2 - 6*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 2 0; varGCD=3 no mod constant! 28 + 42*x_2 + 27*x_2^2 + 36*y_2 + 27*y_2^2 - 6*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 0 1; varGCD=3 no mod constant!  - 5 + 6*x_2 + 27*x_2^2 + 27*y_2^2 - 24*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 0 1; variables only? 8*x_2 + 9*x_2^2 + 9*y_2^2 - 8*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 0 1; varGCD=3 no mod constant! 11 + 42*x_2 + 27*x_2^2 + 27*y_2^2 - 24*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 1 1; varGCD=3 no mod constant!  - 2 + 6*x_2 + 27*x_2^2 + 18*y_2 + 27*y_2^2 - 24*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 1 1; no varGCD? 1 + 8*x_2 + 9*x_2^2 + 6*y_2 + 9*y_2^2 - 8*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 1 1; varGCD=3 no mod constant! 14 + 42*x_2 + 27*x_2^2 + 18*y_2 + 27*y_2^2 - 24*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 2 1; varGCD=3 no mod constant! 7 + 6*x_2 + 27*x_2^2 + 36*y_2 + 27*y_2^2 - 24*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 2 1; no varGCD? 4 + 8*x_2 + 9*x_2^2 + 12*y_2 + 9*y_2^2 - 8*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 2 1; varGCD=3 no mod constant! 23 + 42*x_2 + 27*x_2^2 + 36*y_2 + 27*y_2^2 - 24*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 0 2; varGCD=3 no mod constant!  - 16 + 6*x_2 + 27*x_2^2 + 27*y_2^2 - 42*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 0 2; varGCD=3 no mod constant!  - 11 + 24*x_2 + 27*x_2^2 + 27*y_2^2 - 42*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 0 2; variables only? 14*x_2 + 9*x_2^2 + 9*y_2^2 - 14*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 1 2; varGCD=3 no mod constant!  - 13 + 6*x_2 + 27*x_2^2 + 18*y_2 + 27*y_2^2 - 42*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 1 2; varGCD=3 no mod constant!  - 8 + 24*x_2 + 27*x_2^2 + 18*y_2 + 27*y_2^2 - 42*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 1 2; no varGCD? 1 + 14*x_2 + 9*x_2^2 + 6*y_2 + 9*y_2^2 - 14*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 2 2; varGCD=3 no mod constant!  - 4 + 6*x_2 + 27*x_2^2 + 36*y_2 + 27*y_2^2 - 42*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 2 2; varGCD=3 no mod constant! 1 + 24*x_2 + 27*x_2^2 + 36*y_2 + 27*y_2^2 - 42*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 2 2; no varGCD? 4 + 14*x_2 + 9*x_2^2 + 12*y_2 + 9*y_2^2 - 14*z_2 - 9*z_2^2 overflow!

  4;x_1;y_1;z_1; 0 0 0; var. set not primitive! x_2 + 6*x_2^2 + 6*y_2^2 - z_2 - 6*z_2^2
  4;x_1;y_1;z_1; 1 0 0; varGCD=8 no mod constant! 5 + 32*x_2 + 48*x_2^2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 0 0; no varGCD? 2 + 7*x_2 + 6*x_2^2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 0 0; varGCD=8 no mod constant! 33 + 80*x_2 + 48*x_2^2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 1 0; varGCD=8 no mod constant! 3 + 8*x_2 + 48*x_2^2 + 24*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 1 0; no varGCD? 1 + 4*x_2 + 6*x_2^2 + 3*y_2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 1 0; varGCD=8 no mod constant! 19 + 56*x_2 + 48*x_2^2 + 24*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 1 0; varGCD=2 no mod constant! 9 + 20*x_2 + 12*x_2^2 + 6*y_2 + 12*y_2^2 - 2*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 0 2 0; varGCD=2 no mod constant! 3 + 2*x_2 + 12*x_2^2 + 12*y_2 + 12*y_2^2 - 2*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 1 2 0; varGCD=8 no mod constant! 17 + 32*x_2 + 48*x_2^2 + 48*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 2 0; varGCD=2 no mod constant! 7 + 14*x_2 + 12*x_2^2 + 12*y_2 + 12*y_2^2 - 2*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 3 2 0; varGCD=8 no mod constant! 45 + 80*x_2 + 48*x_2^2 + 48*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 3 0; varGCD=8 no mod constant! 27 + 8*x_2 + 48*x_2^2 + 72*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 3 0; no varGCD? 4 + 4*x_2 + 6*x_2^2 + 9*y_2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 3 0; varGCD=8 no mod constant! 43 + 56*x_2 + 48*x_2^2 + 72*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 3 0; varGCD=2 no mod constant! 15 + 20*x_2 + 12*x_2^2 + 18*y_2 + 12*y_2^2 - 2*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 0 0 1; varGCD=8 no mod constant!  - 5 + 8*x_2 + 48*x_2^2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 0 1; variables only? INFINITE DESCENT: 2 -> 1 <---------- 2*x_1 + 3*x_1^2 + 3*y_1^2 - 2*z_1 - 3*z_1^2 <equiv>  2*x_2 + 3*x_2^2 + 3*y_2^2 - 2*z_2 - 3*z_2^2
  4;x_1;y_1;z_1; 2 0 1; varGCD=8 no mod constant! 11 + 56*x_2 + 48*x_2^2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 0 1; varGCD=4 no mod constant! 7 + 20*x_2 + 12*x_2^2 + 12*y_2^2 - 8*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 0 1 1; varGCD=4 no mod constant!  - 1 + 4*x_2 + 24*x_2^2 + 12*y_2 + 24*y_2^2 - 16*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 1 1 1; varGCD=8 no mod constant! 3 + 32*x_2 + 48*x_2^2 + 24*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 1 1; varGCD=4 no mod constant! 7 + 28*x_2 + 24*x_2^2 + 12*y_2 + 24*y_2^2 - 16*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 3 1 1; varGCD=8 no mod constant! 31 + 80*x_2 + 48*x_2^2 + 24*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 2 1; varGCD=8 no mod constant! 7 + 8*x_2 + 48*x_2^2 + 48*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 2 1; varGCD=4 no mod constant! 3 + 8*x_2 + 12*x_2^2 + 12*y_2 + 12*y_2^2 - 8*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 2 2 1; varGCD=8 no mod constant! 23 + 56*x_2 + 48*x_2^2 + 48*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 2 1; varGCD=2 no mod constant! 5 + 10*x_2 + 6*x_2^2 + 6*y_2 + 6*y_2^2 - 4*z_2 - 6*z_2^2
  4;x_1;y_1;z_1; 0 3 1; varGCD=4 no mod constant! 11 + 4*x_2 + 24*x_2^2 + 36*y_2 + 24*y_2^2 - 16*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 1 3 1; varGCD=8 no mod constant! 27 + 32*x_2 + 48*x_2^2 + 72*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 3 1; varGCD=4 no mod constant! 19 + 28*x_2 + 24*x_2^2 + 36*y_2 + 24*y_2^2 - 16*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 3 3 1; varGCD=8 no mod constant! 55 + 80*x_2 + 48*x_2^2 + 72*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 0 2; no varGCD?  - 2 + x_2 + 6*x_2^2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 0 2; varGCD=8 no mod constant!  - 11 + 32*x_2 + 48*x_2^2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 0 2; variables only? 7*x_2 + 6*x_2^2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 0 2; varGCD=8 no mod constant! 17 + 80*x_2 + 48*x_2^2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 1 2; varGCD=8 no mod constant!  - 13 + 8*x_2 + 48*x_2^2 + 24*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 1 2; no varGCD?  - 1 + 4*x_2 + 6*x_2^2 + 3*y_2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 1 2; varGCD=8 no mod constant! 3 + 56*x_2 + 48*x_2^2 + 24*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 1 2; varGCD=2 no mod constant! 5 + 20*x_2 + 12*x_2^2 + 6*y_2 + 12*y_2^2 - 14*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 0 2 2; varGCD=2 no mod constant!  - 1 + 2*x_2 + 12*x_2^2 + 12*y_2 + 12*y_2^2 - 14*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 1 2 2; varGCD=8 no mod constant! 1 + 32*x_2 + 48*x_2^2 + 48*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 2 2; varGCD=2 no mod constant! 3 + 14*x_2 + 12*x_2^2 + 12*y_2 + 12*y_2^2 - 14*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 3 2 2; varGCD=8 no mod constant! 29 + 80*x_2 + 48*x_2^2 + 48*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 3 2; varGCD=8 no mod constant! 11 + 8*x_2 + 48*x_2^2 + 72*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 3 2; no varGCD? 2 + 4*x_2 + 6*x_2^2 + 9*y_2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 3 2; varGCD=8 no mod constant! 27 + 56*x_2 + 48*x_2^2 + 72*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 3 2; varGCD=2 no mod constant! 11 + 20*x_2 + 12*x_2^2 + 18*y_2 + 12*y_2^2 - 14*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 0 0 3; varGCD=8 no mod constant!  - 33 + 8*x_2 + 48*x_2^2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 0 3; varGCD=4 no mod constant!  - 7 + 8*x_2 + 12*x_2^2 + 12*y_2^2 - 20*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 2 0 3; varGCD=8 no mod constant!  - 17 + 56*x_2 + 48*x_2^2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 0 3; variables only? 5*x_2 + 3*x_2^2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 1 3; varGCD=4 no mod constant!  - 15 + 4*x_2 + 24*x_2^2 + 12*y_2 + 24*y_2^2 - 40*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 1 1 3; varGCD=8 no mod constant!  - 25 + 32*x_2 + 48*x_2^2 + 24*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 1 3; varGCD=4 no mod constant!  - 7 + 28*x_2 + 24*x_2^2 + 12*y_2 + 24*y_2^2 - 40*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 3 1 3; varGCD=8 no mod constant! 3 + 80*x_2 + 48*x_2^2 + 24*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 2 3; varGCD=8 no mod constant!  - 21 + 8*x_2 + 48*x_2^2 + 48*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 2 3; no varGCD?  - 1 + 2*x_2 + 3*x_2^2 + 3*y_2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 2 3; varGCD=8 no mod constant!  - 5 + 56*x_2 + 48*x_2^2 + 48*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 2 3; varGCD=4 no mod constant! 3 + 20*x_2 + 12*x_2^2 + 12*y_2 + 12*y_2^2 - 20*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 0 3 3; varGCD=4 no mod constant!  - 3 + 4*x_2 + 24*x_2^2 + 36*y_2 + 24*y_2^2 - 40*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 1 3 3; varGCD=8 no mod constant!  - 1 + 32*x_2 + 48*x_2^2 + 72*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 3 3; varGCD=4 no mod constant! 5 + 28*x_2 + 24*x_2^2 + 36*y_2 + 24*y_2^2 - 40*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 3 3 3; varGCD=8 no mod constant! 27 + 80*x_2 + 48*x_2^2 + 72*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2

3;x;y;z; 2 0 1; no varGCD? 1 + 4*x_1 + 3*x_1^2 + 3*y_1^2 - 2*z_1 - 3*z_1^2
  2;x_1;y_1;z_1; 0 0 0; varGCD=4 no mod constant! 1 + 8*x_2 + 12*x_2^2 + 12*y_2^2 - 4*z_2 - 12*z_2^2
  2;x_1;y_1;z_1; 1 0 0; no varGCD? 2 + 5*x_2 + 3*x_2^2 + 3*y_2^2 - z_2 - 3*z_2^2 overflow!
  2;x_1;y_1;z_1; 0 1 0; no varGCD? 1 + 2*x_2 + 3*x_2^2 + 3*y_2 + 3*y_2^2 - z_2 - 3*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 1 0; varGCD=4 no mod constant! 11 + 20*x_2 + 12*x_2^2 + 12*y_2 + 12*y_2^2 - 4*z_2 - 12*z_2^2
  2;x_1;y_1;z_1; 0 0 1; no varGCD?  - 1 + 2*x_2 + 3*x_2^2 + 3*y_2^2 - 4*z_2 - 3*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 0 1; varGCD=4 no mod constant! 3 + 20*x_2 + 12*x_2^2 + 12*y_2^2 - 16*z_2 - 12*z_2^2
  2;x_1;y_1;z_1; 0 1 1; varGCD=4 no mod constant!  - 1 + 8*x_2 + 12*x_2^2 + 12*y_2 + 12*y_2^2 - 16*z_2 - 12*z_2^2
  2;x_1;y_1;z_1; 1 1 1; varGCD=2 no mod constant! 3 + 10*x_2 + 6*x_2^2 + 6*y_2 + 6*y_2^2 - 8*z_2 - 6*z_2^2

  3;x_1;y_1;z_1; 0 0 0; varGCD=3 no mod constant! 1 + 12*x_2 + 27*x_2^2 + 27*y_2^2 - 6*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 0 0; varGCD=3 no mod constant! 8 + 30*x_2 + 27*x_2^2 + 27*y_2^2 - 6*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 0 0; no varGCD? 7 + 16*x_2 + 9*x_2^2 + 9*y_2^2 - 2*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 1 0; varGCD=3 no mod constant! 4 + 12*x_2 + 27*x_2^2 + 18*y_2 + 27*y_2^2 - 6*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 1 0; varGCD=3 no mod constant! 11 + 30*x_2 + 27*x_2^2 + 18*y_2 + 27*y_2^2 - 6*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 1 0; no varGCD? 8 + 16*x_2 + 9*x_2^2 + 6*y_2 + 9*y_2^2 - 2*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 2 0; varGCD=3 no mod constant! 13 + 12*x_2 + 27*x_2^2 + 36*y_2 + 27*y_2^2 - 6*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 2 0; varGCD=3 no mod constant! 20 + 30*x_2 + 27*x_2^2 + 36*y_2 + 27*y_2^2 - 6*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 2 0; no varGCD? 11 + 16*x_2 + 9*x_2^2 + 12*y_2 + 9*y_2^2 - 2*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 0 1; varGCD=3 no mod constant!  - 4 + 12*x_2 + 27*x_2^2 + 27*y_2^2 - 24*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 0 1; no varGCD? 1 + 10*x_2 + 9*x_2^2 + 9*y_2^2 - 8*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 0 1; varGCD=3 no mod constant! 16 + 48*x_2 + 27*x_2^2 + 27*y_2^2 - 24*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 1 1; varGCD=3 no mod constant!  - 1 + 12*x_2 + 27*x_2^2 + 18*y_2 + 27*y_2^2 - 24*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 1 1; no varGCD? 2 + 10*x_2 + 9*x_2^2 + 6*y_2 + 9*y_2^2 - 8*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 1 1; varGCD=3 no mod constant! 19 + 48*x_2 + 27*x_2^2 + 18*y_2 + 27*y_2^2 - 24*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 2 1; varGCD=3 no mod constant! 8 + 12*x_2 + 27*x_2^2 + 36*y_2 + 27*y_2^2 - 24*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 2 1; no varGCD? 5 + 10*x_2 + 9*x_2^2 + 12*y_2 + 9*y_2^2 - 8*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 2 1; varGCD=3 no mod constant! 28 + 48*x_2 + 27*x_2^2 + 36*y_2 + 27*y_2^2 - 24*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 0 2; no varGCD?  - 5 + 4*x_2 + 9*x_2^2 + 9*y_2^2 - 14*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 0 2; varGCD=3 no mod constant!  - 8 + 30*x_2 + 27*x_2^2 + 27*y_2^2 - 42*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 0 2; varGCD=3 no mod constant! 5 + 48*x_2 + 27*x_2^2 + 27*y_2^2 - 42*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 1 2; no varGCD?  - 4 + 4*x_2 + 9*x_2^2 + 6*y_2 + 9*y_2^2 - 14*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 1 2; varGCD=3 no mod constant!  - 5 + 30*x_2 + 27*x_2^2 + 18*y_2 + 27*y_2^2 - 42*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 1 2; varGCD=3 no mod constant! 8 + 48*x_2 + 27*x_2^2 + 18*y_2 + 27*y_2^2 - 42*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 2 2; no varGCD?  - 1 + 4*x_2 + 9*x_2^2 + 12*y_2 + 9*y_2^2 - 14*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 2 2; varGCD=3 no mod constant! 4 + 30*x_2 + 27*x_2^2 + 36*y_2 + 27*y_2^2 - 42*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 2 2; varGCD=3 no mod constant! 17 + 48*x_2 + 27*x_2^2 + 36*y_2 + 27*y_2^2 - 42*z_2 - 27*z_2^2

  4;x_1;y_1;z_1; 0 0 0; varGCD=8 no mod constant! 1 + 16*x_2 + 48*x_2^2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 0 0; no varGCD? 1 + 5*x_2 + 6*x_2^2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 0 0; varGCD=8 no mod constant! 21 + 64*x_2 + 48*x_2^2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 0 0; no varGCD? 5 + 11*x_2 + 6*x_2^2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 1 0; varGCD=2 no mod constant! 1 + 4*x_2 + 12*x_2^2 + 6*y_2 + 12*y_2^2 - 2*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 1 1 0; varGCD=8 no mod constant! 11 + 40*x_2 + 48*x_2^2 + 24*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 1 0; no varGCD? 3 + 8*x_2 + 6*x_2^2 + 3*y_2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 1 0; varGCD=8 no mod constant! 43 + 88*x_2 + 48*x_2^2 + 24*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 2 0; varGCD=8 no mod constant! 13 + 16*x_2 + 48*x_2^2 + 48*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 2 0; varGCD=2 no mod constant! 5 + 10*x_2 + 12*x_2^2 + 12*y_2 + 12*y_2^2 - 2*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 2 2 0; varGCD=8 no mod constant! 33 + 64*x_2 + 48*x_2^2 + 48*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 2 0; varGCD=2 no mod constant! 13 + 22*x_2 + 12*x_2^2 + 12*y_2 + 12*y_2^2 - 2*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 0 3 0; varGCD=2 no mod constant! 7 + 4*x_2 + 12*x_2^2 + 18*y_2 + 12*y_2^2 - 2*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 1 3 0; varGCD=8 no mod constant! 35 + 40*x_2 + 48*x_2^2 + 72*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 3 0; no varGCD? 6 + 8*x_2 + 6*x_2^2 + 9*y_2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 3 0; varGCD=8 no mod constant! 67 + 88*x_2 + 48*x_2^2 + 72*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 0 1; varGCD=4 no mod constant!  - 1 + 4*x_2 + 12*x_2^2 + 12*y_2^2 - 8*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 1 0 1; varGCD=8 no mod constant! 3 + 40*x_2 + 48*x_2^2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 0 1; no varGCD? INFINITE DESCENT: 2 -> 1 <---------- 1 + 4*x_1 + 3*x_1^2 + 3*y_1^2 - 2*z_1 - 3*z_1^2 <equiv>  1 + 4*x_2 + 3*x_2^2 + 3*y_2^2 - 2*z_2 - 3*z_2^2
  4;x_1;y_1;z_1; 3 0 1; varGCD=8 no mod constant! 35 + 88*x_2 + 48*x_2^2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 1 1; varGCD=8 no mod constant!  - 1 + 16*x_2 + 48*x_2^2 + 24*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 1 1; varGCD=4 no mod constant! 3 + 20*x_2 + 24*x_2^2 + 12*y_2 + 24*y_2^2 - 16*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 2 1 1; varGCD=8 no mod constant! 19 + 64*x_2 + 48*x_2^2 + 24*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 1 1; varGCD=4 no mod constant! 19 + 44*x_2 + 24*x_2^2 + 12*y_2 + 24*y_2^2 - 16*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 0 2 1; varGCD=2 no mod constant! 1 + 2*x_2 + 6*x_2^2 + 6*y_2 + 6*y_2^2 - 4*z_2 - 6*z_2^2
  4;x_1;y_1;z_1; 1 2 1; varGCD=8 no mod constant! 15 + 40*x_2 + 48*x_2^2 + 48*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 2 1; varGCD=4 no mod constant! 7 + 16*x_2 + 12*x_2^2 + 12*y_2 + 12*y_2^2 - 8*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 3 2 1; varGCD=8 no mod constant! 47 + 88*x_2 + 48*x_2^2 + 48*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 3 1; varGCD=8 no mod constant! 23 + 16*x_2 + 48*x_2^2 + 72*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 3 1; varGCD=4 no mod constant! 15 + 20*x_2 + 24*x_2^2 + 36*y_2 + 24*y_2^2 - 16*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 2 3 1; varGCD=8 no mod constant! 43 + 64*x_2 + 48*x_2^2 + 72*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 3 1; varGCD=4 no mod constant! 31 + 44*x_2 + 24*x_2^2 + 36*y_2 + 24*y_2^2 - 16*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 0 0 2; varGCD=8 no mod constant!  - 15 + 16*x_2 + 48*x_2^2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 0 2; no varGCD?  - 1 + 5*x_2 + 6*x_2^2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 0 2; varGCD=8 no mod constant! 5 + 64*x_2 + 48*x_2^2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 0 2; no varGCD? 3 + 11*x_2 + 6*x_2^2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 1 2; varGCD=2 no mod constant!  - 3 + 4*x_2 + 12*x_2^2 + 6*y_2 + 12*y_2^2 - 14*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 1 1 2; varGCD=8 no mod constant!  - 5 + 40*x_2 + 48*x_2^2 + 24*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 1 2; no varGCD? 1 + 8*x_2 + 6*x_2^2 + 3*y_2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 1 2; varGCD=8 no mod constant! 27 + 88*x_2 + 48*x_2^2 + 24*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 2 2; varGCD=8 no mod constant!  - 3 + 16*x_2 + 48*x_2^2 + 48*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 2 2; varGCD=2 no mod constant! 1 + 10*x_2 + 12*x_2^2 + 12*y_2 + 12*y_2^2 - 14*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 2 2 2; varGCD=8 no mod constant! 17 + 64*x_2 + 48*x_2^2 + 48*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 2 2; varGCD=2 no mod constant! 9 + 22*x_2 + 12*x_2^2 + 12*y_2 + 12*y_2^2 - 14*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 0 3 2; varGCD=2 no mod constant! 3 + 4*x_2 + 12*x_2^2 + 18*y_2 + 12*y_2^2 - 14*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 1 3 2; varGCD=8 no mod constant! 19 + 40*x_2 + 48*x_2^2 + 72*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 3 2; no varGCD? 4 + 8*x_2 + 6*x_2^2 + 9*y_2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 3 2; varGCD=8 no mod constant! 51 + 88*x_2 + 48*x_2^2 + 72*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 0 3; no varGCD?  - 2 + x_2 + 3*x_2^2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 0 3; varGCD=8 no mod constant!  - 25 + 40*x_2 + 48*x_2^2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 0 3; varGCD=4 no mod constant!  - 3 + 16*x_2 + 12*x_2^2 + 12*y_2^2 - 20*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 3 0 3; varGCD=8 no mod constant! 7 + 88*x_2 + 48*x_2^2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 1 3; varGCD=8 no mod constant!  - 29 + 16*x_2 + 48*x_2^2 + 24*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 1 3; varGCD=4 no mod constant!  - 11 + 20*x_2 + 24*x_2^2 + 12*y_2 + 24*y_2^2 - 40*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 2 1 3; varGCD=8 no mod constant!  - 9 + 64*x_2 + 48*x_2^2 + 24*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 1 3; varGCD=4 no mod constant! 5 + 44*x_2 + 24*x_2^2 + 12*y_2 + 24*y_2^2 - 40*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 0 2 3; varGCD=4 no mod constant!  - 5 + 4*x_2 + 12*x_2^2 + 12*y_2 + 12*y_2^2 - 20*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 1 2 3; varGCD=8 no mod constant!  - 13 + 40*x_2 + 48*x_2^2 + 48*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 2 3; variables only? 4*x_2 + 3*x_2^2 + 3*y_2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 2 3; varGCD=8 no mod constant! 19 + 88*x_2 + 48*x_2^2 + 48*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 3 3; varGCD=8 no mod constant!  - 5 + 16*x_2 + 48*x_2^2 + 72*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 3 3; varGCD=4 no mod constant! 1 + 20*x_2 + 24*x_2^2 + 36*y_2 + 24*y_2^2 - 40*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 2 3 3; varGCD=8 no mod constant! 15 + 64*x_2 + 48*x_2^2 + 72*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 3 3; varGCD=4 no mod constant! 17 + 44*x_2 + 24*x_2^2 + 36*y_2 + 24*y_2^2 - 40*z_2 - 24*z_2^2

3;x;y;z; 0 1 1; variables only? 3*x_1^2 + 2*y_1 + 3*y_1^2 - 2*z_1 - 3*z_1^2
  2;x_1;y_1;z_1; 0 0 0; var. set not primitive! 3*x_2^2 + y_2 + 3*y_2^2 - z_2 - 3*z_2^2
  2;x_1;y_1;z_1; 1 0 0; varGCD=4 no mod constant! 3 + 12*x_2 + 12*x_2^2 + 4*y_2 + 12*y_2^2 - 4*z_2 - 12*z_2^2
  2;x_1;y_1;z_1; 0 1 0; varGCD=4 no mod constant! 5 + 12*x_2^2 + 16*y_2 + 12*y_2^2 - 4*z_2 - 12*z_2^2
  2;x_1;y_1;z_1; 1 1 0; no varGCD? 2 + 3*x_2 + 3*x_2^2 + 4*y_2 + 3*y_2^2 - z_2 - 3*z_2^2 overflow!
  2;x_1;y_1;z_1; 0 0 1; varGCD=4 no mod constant!  - 5 + 12*x_2^2 + 4*y_2 + 12*y_2^2 - 16*z_2 - 12*z_2^2
  2;x_1;y_1;z_1; 1 0 1; varGCD=2 no mod constant!  - 1 + 6*x_2 + 6*x_2^2 + 2*y_2 + 6*y_2^2 - 8*z_2 - 6*z_2^2
  2;x_1;y_1;z_1; 0 1 1; variables only? 3*x_2^2 + 4*y_2 + 3*y_2^2 - 4*z_2 - 3*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 1 1; varGCD=4 no mod constant! 3 + 12*x_2 + 12*x_2^2 + 16*y_2 + 12*y_2^2 - 16*z_2 - 12*z_2^2

  3;x_1;y_1;z_1; 0 0 0; var. set not primitive! 9*x_2^2 + 2*y_2 + 9*y_2^2 - 2*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 0 0; no varGCD? 1 + 6*x_2 + 9*x_2^2 + 2*y_2 + 9*y_2^2 - 2*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 0 0; no varGCD? 4 + 12*x_2 + 9*x_2^2 + 2*y_2 + 9*y_2^2 - 2*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 1 0; varGCD=3 no mod constant! 5 + 27*x_2^2 + 24*y_2 + 27*y_2^2 - 6*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 1 0; varGCD=3 no mod constant! 8 + 18*x_2 + 27*x_2^2 + 24*y_2 + 27*y_2^2 - 6*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 1 0; varGCD=3 no mod constant! 17 + 36*x_2 + 27*x_2^2 + 24*y_2 + 27*y_2^2 - 6*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 2 0; varGCD=3 no mod constant! 16 + 27*x_2^2 + 42*y_2 + 27*y_2^2 - 6*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 2 0; varGCD=3 no mod constant! 19 + 18*x_2 + 27*x_2^2 + 42*y_2 + 27*y_2^2 - 6*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 2 0; varGCD=3 no mod constant! 28 + 36*x_2 + 27*x_2^2 + 42*y_2 + 27*y_2^2 - 6*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 0 1; varGCD=3 no mod constant!  - 5 + 27*x_2^2 + 6*y_2 + 27*y_2^2 - 24*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 0 1; varGCD=3 no mod constant!  - 2 + 18*x_2 + 27*x_2^2 + 6*y_2 + 27*y_2^2 - 24*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 0 1; varGCD=3 no mod constant! 7 + 36*x_2 + 27*x_2^2 + 6*y_2 + 27*y_2^2 - 24*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 1 1; variables only? 9*x_2^2 + 8*y_2 + 9*y_2^2 - 8*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 1 1; no varGCD? 1 + 6*x_2 + 9*x_2^2 + 8*y_2 + 9*y_2^2 - 8*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 1 1; no varGCD? 4 + 12*x_2 + 9*x_2^2 + 8*y_2 + 9*y_2^2 - 8*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 2 1; varGCD=3 no mod constant! 11 + 27*x_2^2 + 42*y_2 + 27*y_2^2 - 24*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 2 1; varGCD=3 no mod constant! 14 + 18*x_2 + 27*x_2^2 + 42*y_2 + 27*y_2^2 - 24*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 2 1; varGCD=3 no mod constant! 23 + 36*x_2 + 27*x_2^2 + 42*y_2 + 27*y_2^2 - 24*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 0 2; varGCD=3 no mod constant!  - 16 + 27*x_2^2 + 6*y_2 + 27*y_2^2 - 42*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 0 2; varGCD=3 no mod constant!  - 13 + 18*x_2 + 27*x_2^2 + 6*y_2 + 27*y_2^2 - 42*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 0 2; varGCD=3 no mod constant!  - 4 + 36*x_2 + 27*x_2^2 + 6*y_2 + 27*y_2^2 - 42*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 1 2; varGCD=3 no mod constant!  - 11 + 27*x_2^2 + 24*y_2 + 27*y_2^2 - 42*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 1 2; varGCD=3 no mod constant!  - 8 + 18*x_2 + 27*x_2^2 + 24*y_2 + 27*y_2^2 - 42*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 1 2; varGCD=3 no mod constant! 1 + 36*x_2 + 27*x_2^2 + 24*y_2 + 27*y_2^2 - 42*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 2 2; variables only? 9*x_2^2 + 14*y_2 + 9*y_2^2 - 14*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 2 2; no varGCD? 1 + 6*x_2 + 9*x_2^2 + 14*y_2 + 9*y_2^2 - 14*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 2 2; no varGCD? 4 + 12*x_2 + 9*x_2^2 + 14*y_2 + 9*y_2^2 - 14*z_2 - 9*z_2^2 overflow!

  4;x_1;y_1;z_1; 0 0 0; var. set not primitive! 6*x_2^2 + y_2 + 6*y_2^2 - z_2 - 6*z_2^2
  4;x_1;y_1;z_1; 1 0 0; varGCD=8 no mod constant! 3 + 24*x_2 + 48*x_2^2 + 8*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 0 0; varGCD=2 no mod constant! 3 + 12*x_2 + 12*x_2^2 + 2*y_2 + 12*y_2^2 - 2*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 3 0 0; varGCD=8 no mod constant! 27 + 72*x_2 + 48*x_2^2 + 8*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 1 0; varGCD=8 no mod constant! 5 + 48*x_2^2 + 32*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 1 0; no varGCD? 1 + 3*x_2 + 6*x_2^2 + 4*y_2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 1 0; varGCD=8 no mod constant! 17 + 48*x_2 + 48*x_2^2 + 32*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 1 0; no varGCD? 4 + 9*x_2 + 6*x_2^2 + 4*y_2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 2 0; no varGCD? 2 + 6*x_2^2 + 7*y_2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 2 0; varGCD=8 no mod constant! 19 + 24*x_2 + 48*x_2^2 + 56*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 2 0; varGCD=2 no mod constant! 7 + 12*x_2 + 12*x_2^2 + 14*y_2 + 12*y_2^2 - 2*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 3 2 0; varGCD=8 no mod constant! 43 + 72*x_2 + 48*x_2^2 + 56*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 3 0; varGCD=8 no mod constant! 33 + 48*x_2^2 + 80*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 3 0; varGCD=2 no mod constant! 9 + 6*x_2 + 12*x_2^2 + 20*y_2 + 12*y_2^2 - 2*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 2 3 0; varGCD=8 no mod constant! 45 + 48*x_2 + 48*x_2^2 + 80*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 3 0; varGCD=2 no mod constant! 15 + 18*x_2 + 12*x_2^2 + 20*y_2 + 12*y_2^2 - 2*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 0 0 1; varGCD=8 no mod constant!  - 5 + 48*x_2^2 + 8*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 0 1; varGCD=4 no mod constant!  - 1 + 12*x_2 + 24*x_2^2 + 4*y_2 + 24*y_2^2 - 16*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 2 0 1; varGCD=8 no mod constant! 7 + 48*x_2 + 48*x_2^2 + 8*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 0 1; varGCD=4 no mod constant! 11 + 36*x_2 + 24*x_2^2 + 4*y_2 + 24*y_2^2 - 16*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 0 1 1; variables only? INFINITE DESCENT: 2 -> 1 <---------- 3*x_1^2 + 2*y_1 + 3*y_1^2 - 2*z_1 - 3*z_1^2 <equiv>  3*x_2^2 + 2*y_2 + 3*y_2^2 - 2*z_2 - 3*z_2^2
  4;x_1;y_1;z_1; 1 1 1; varGCD=8 no mod constant! 3 + 24*x_2 + 48*x_2^2 + 32*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 1 1; varGCD=4 no mod constant! 3 + 12*x_2 + 12*x_2^2 + 8*y_2 + 12*y_2^2 - 8*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 3 1 1; varGCD=8 no mod constant! 27 + 72*x_2 + 48*x_2^2 + 32*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 2 1; varGCD=8 no mod constant! 11 + 48*x_2^2 + 56*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 2 1; varGCD=4 no mod constant! 7 + 12*x_2 + 24*x_2^2 + 28*y_2 + 24*y_2^2 - 16*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 2 2 1; varGCD=8 no mod constant! 23 + 48*x_2 + 48*x_2^2 + 56*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 2 1; varGCD=4 no mod constant! 19 + 36*x_2 + 24*x_2^2 + 28*y_2 + 24*y_2^2 - 16*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 0 3 1; varGCD=4 no mod constant! 7 + 12*x_2^2 + 20*y_2 + 12*y_2^2 - 8*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 1 3 1; varGCD=8 no mod constant! 31 + 24*x_2 + 48*x_2^2 + 80*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 3 1; varGCD=2 no mod constant! 5 + 6*x_2 + 6*x_2^2 + 10*y_2 + 6*y_2^2 - 4*z_2 - 6*z_2^2
  4;x_1;y_1;z_1; 3 3 1; varGCD=8 no mod constant! 55 + 72*x_2 + 48*x_2^2 + 80*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 0 2; no varGCD?  - 2 + 6*x_2^2 + y_2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 0 2; varGCD=8 no mod constant!  - 13 + 24*x_2 + 48*x_2^2 + 8*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 0 2; varGCD=2 no mod constant!  - 1 + 12*x_2 + 12*x_2^2 + 2*y_2 + 12*y_2^2 - 14*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 3 0 2; varGCD=8 no mod constant! 11 + 72*x_2 + 48*x_2^2 + 8*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 1 2; varGCD=8 no mod constant!  - 11 + 48*x_2^2 + 32*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 1 2; no varGCD?  - 1 + 3*x_2 + 6*x_2^2 + 4*y_2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 1 2; varGCD=8 no mod constant! 1 + 48*x_2 + 48*x_2^2 + 32*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 1 2; no varGCD? 2 + 9*x_2 + 6*x_2^2 + 4*y_2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 2 2; variables only? 6*x_2^2 + 7*y_2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 2 2; varGCD=8 no mod constant! 3 + 24*x_2 + 48*x_2^2 + 56*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 2 2; varGCD=2 no mod constant! 3 + 12*x_2 + 12*x_2^2 + 14*y_2 + 12*y_2^2 - 14*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 3 2 2; varGCD=8 no mod constant! 27 + 72*x_2 + 48*x_2^2 + 56*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 3 2; varGCD=8 no mod constant! 17 + 48*x_2^2 + 80*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 3 2; varGCD=2 no mod constant! 5 + 6*x_2 + 12*x_2^2 + 20*y_2 + 12*y_2^2 - 14*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 2 3 2; varGCD=8 no mod constant! 29 + 48*x_2 + 48*x_2^2 + 80*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 3 2; varGCD=2 no mod constant! 11 + 18*x_2 + 12*x_2^2 + 20*y_2 + 12*y_2^2 - 14*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 0 0 3; varGCD=8 no mod constant!  - 33 + 48*x_2^2 + 8*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 0 3; varGCD=4 no mod constant!  - 15 + 12*x_2 + 24*x_2^2 + 4*y_2 + 24*y_2^2 - 40*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 2 0 3; varGCD=8 no mod constant!  - 21 + 48*x_2 + 48*x_2^2 + 8*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 0 3; varGCD=4 no mod constant!  - 3 + 36*x_2 + 24*x_2^2 + 4*y_2 + 24*y_2^2 - 40*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 0 1 3; varGCD=4 no mod constant!  - 7 + 12*x_2^2 + 8*y_2 + 12*y_2^2 - 20*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 1 1 3; varGCD=8 no mod constant!  - 25 + 24*x_2 + 48*x_2^2 + 32*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 1 3; no varGCD?  - 1 + 3*x_2 + 3*x_2^2 + 2*y_2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 1 3; varGCD=8 no mod constant!  - 1 + 72*x_2 + 48*x_2^2 + 32*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 2 3; varGCD=8 no mod constant!  - 17 + 48*x_2^2 + 56*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 2 3; varGCD=4 no mod constant!  - 7 + 12*x_2 + 24*x_2^2 + 28*y_2 + 24*y_2^2 - 40*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 2 2 3; varGCD=8 no mod constant!  - 5 + 48*x_2 + 48*x_2^2 + 56*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 2 3; varGCD=4 no mod constant! 5 + 36*x_2 + 24*x_2^2 + 28*y_2 + 24*y_2^2 - 40*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 0 3 3; variables only? 3*x_2^2 + 5*y_2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 3 3; varGCD=8 no mod constant! 3 + 24*x_2 + 48*x_2^2 + 80*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 3 3; varGCD=4 no mod constant! 3 + 12*x_2 + 12*x_2^2 + 20*y_2 + 12*y_2^2 - 20*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 3 3 3; varGCD=8 no mod constant! 27 + 72*x_2 + 48*x_2^2 + 80*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2

3;x;y;z; 1 1 1; varGCD=3 no mod constant! 1 + 6*x_1 + 9*x_1^2 + 6*y_1 + 9*y_1^2 - 6*z_1 - 9*z_1^2
3;x;y;z; 2 1 1; varGCD=3 no mod constant! 4 + 12*x_1 + 9*x_1^2 + 6*y_1 + 9*y_1^2 - 6*z_1 - 9*z_1^2
3;x;y;z; 0 2 1; no varGCD? 1 + 3*x_1^2 + 4*y_1 + 3*y_1^2 - 2*z_1 - 3*z_1^2
  2;x_1;y_1;z_1; 0 0 0; varGCD=4 no mod constant! 1 + 12*x_2^2 + 8*y_2 + 12*y_2^2 - 4*z_2 - 12*z_2^2
  2;x_1;y_1;z_1; 1 0 0; no varGCD? 1 + 3*x_2 + 3*x_2^2 + 2*y_2 + 3*y_2^2 - z_2 - 3*z_2^2 overflow!
  2;x_1;y_1;z_1; 0 1 0; no varGCD? 2 + 3*x_2^2 + 5*y_2 + 3*y_2^2 - z_2 - 3*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 1 0; varGCD=4 no mod constant! 11 + 12*x_2 + 12*x_2^2 + 20*y_2 + 12*y_2^2 - 4*z_2 - 12*z_2^2
  2;x_1;y_1;z_1; 0 0 1; no varGCD?  - 1 + 3*x_2^2 + 2*y_2 + 3*y_2^2 - 4*z_2 - 3*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 0 1; varGCD=4 no mod constant!  - 1 + 12*x_2 + 12*x_2^2 + 8*y_2 + 12*y_2^2 - 16*z_2 - 12*z_2^2
  2;x_1;y_1;z_1; 0 1 1; varGCD=4 no mod constant! 3 + 12*x_2^2 + 20*y_2 + 12*y_2^2 - 16*z_2 - 12*z_2^2
  2;x_1;y_1;z_1; 1 1 1; varGCD=2 no mod constant! 3 + 6*x_2 + 6*x_2^2 + 10*y_2 + 6*y_2^2 - 8*z_2 - 6*z_2^2

  3;x_1;y_1;z_1; 0 0 0; varGCD=3 no mod constant! 1 + 27*x_2^2 + 12*y_2 + 27*y_2^2 - 6*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 0 0; varGCD=3 no mod constant! 4 + 18*x_2 + 27*x_2^2 + 12*y_2 + 27*y_2^2 - 6*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 0 0; varGCD=3 no mod constant! 13 + 36*x_2 + 27*x_2^2 + 12*y_2 + 27*y_2^2 - 6*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 1 0; varGCD=3 no mod constant! 8 + 27*x_2^2 + 30*y_2 + 27*y_2^2 - 6*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 1 0; varGCD=3 no mod constant! 11 + 18*x_2 + 27*x_2^2 + 30*y_2 + 27*y_2^2 - 6*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 1 0; varGCD=3 no mod constant! 20 + 36*x_2 + 27*x_2^2 + 30*y_2 + 27*y_2^2 - 6*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 2 0; no varGCD? 7 + 9*x_2^2 + 16*y_2 + 9*y_2^2 - 2*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 2 0; no varGCD? 8 + 6*x_2 + 9*x_2^2 + 16*y_2 + 9*y_2^2 - 2*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 2 0; no varGCD? 11 + 12*x_2 + 9*x_2^2 + 16*y_2 + 9*y_2^2 - 2*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 0 1; varGCD=3 no mod constant!  - 4 + 27*x_2^2 + 12*y_2 + 27*y_2^2 - 24*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 0 1; varGCD=3 no mod constant!  - 1 + 18*x_2 + 27*x_2^2 + 12*y_2 + 27*y_2^2 - 24*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 0 1; varGCD=3 no mod constant! 8 + 36*x_2 + 27*x_2^2 + 12*y_2 + 27*y_2^2 - 24*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 1 1; no varGCD? 1 + 9*x_2^2 + 10*y_2 + 9*y_2^2 - 8*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 1 1; no varGCD? 2 + 6*x_2 + 9*x_2^2 + 10*y_2 + 9*y_2^2 - 8*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 1 1; no varGCD? 5 + 12*x_2 + 9*x_2^2 + 10*y_2 + 9*y_2^2 - 8*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 2 1; varGCD=3 no mod constant! 16 + 27*x_2^2 + 48*y_2 + 27*y_2^2 - 24*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 2 1; varGCD=3 no mod constant! 19 + 18*x_2 + 27*x_2^2 + 48*y_2 + 27*y_2^2 - 24*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 2 1; varGCD=3 no mod constant! 28 + 36*x_2 + 27*x_2^2 + 48*y_2 + 27*y_2^2 - 24*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 0 2; no varGCD?  - 5 + 9*x_2^2 + 4*y_2 + 9*y_2^2 - 14*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 0 2; no varGCD?  - 4 + 6*x_2 + 9*x_2^2 + 4*y_2 + 9*y_2^2 - 14*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 0 2; no varGCD?  - 1 + 12*x_2 + 9*x_2^2 + 4*y_2 + 9*y_2^2 - 14*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 1 2; varGCD=3 no mod constant!  - 8 + 27*x_2^2 + 30*y_2 + 27*y_2^2 - 42*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 1 2; varGCD=3 no mod constant!  - 5 + 18*x_2 + 27*x_2^2 + 30*y_2 + 27*y_2^2 - 42*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 1 2; varGCD=3 no mod constant! 4 + 36*x_2 + 27*x_2^2 + 30*y_2 + 27*y_2^2 - 42*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 2 2; varGCD=3 no mod constant! 5 + 27*x_2^2 + 48*y_2 + 27*y_2^2 - 42*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 2 2; varGCD=3 no mod constant! 8 + 18*x_2 + 27*x_2^2 + 48*y_2 + 27*y_2^2 - 42*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 2 2; varGCD=3 no mod constant! 17 + 36*x_2 + 27*x_2^2 + 48*y_2 + 27*y_2^2 - 42*z_2 - 27*z_2^2

  4;x_1;y_1;z_1; 0 0 0; varGCD=8 no mod constant! 1 + 48*x_2^2 + 16*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 0 0; varGCD=2 no mod constant! 1 + 6*x_2 + 12*x_2^2 + 4*y_2 + 12*y_2^2 - 2*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 2 0 0; varGCD=8 no mod constant! 13 + 48*x_2 + 48*x_2^2 + 16*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 0 0; varGCD=2 no mod constant! 7 + 18*x_2 + 12*x_2^2 + 4*y_2 + 12*y_2^2 - 2*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 0 1 0; no varGCD? 1 + 6*x_2^2 + 5*y_2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 1 0; varGCD=8 no mod constant! 11 + 24*x_2 + 48*x_2^2 + 40*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 1 0; varGCD=2 no mod constant! 5 + 12*x_2 + 12*x_2^2 + 10*y_2 + 12*y_2^2 - 2*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 3 1 0; varGCD=8 no mod constant! 35 + 72*x_2 + 48*x_2^2 + 40*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 2 0; varGCD=8 no mod constant! 21 + 48*x_2^2 + 64*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 2 0; no varGCD? 3 + 3*x_2 + 6*x_2^2 + 8*y_2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 2 0; varGCD=8 no mod constant! 33 + 48*x_2 + 48*x_2^2 + 64*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 2 0; no varGCD? 6 + 9*x_2 + 6*x_2^2 + 8*y_2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 3 0; no varGCD? 5 + 6*x_2^2 + 11*y_2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 3 0; varGCD=8 no mod constant! 43 + 24*x_2 + 48*x_2^2 + 88*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 3 0; varGCD=2 no mod constant! 13 + 12*x_2 + 12*x_2^2 + 22*y_2 + 12*y_2^2 - 2*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 3 3 0; varGCD=8 no mod constant! 67 + 72*x_2 + 48*x_2^2 + 88*y_2 + 48*y_2^2 - 8*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 0 1; varGCD=4 no mod constant!  - 1 + 12*x_2^2 + 4*y_2 + 12*y_2^2 - 8*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 1 0 1; varGCD=8 no mod constant!  - 1 + 24*x_2 + 48*x_2^2 + 16*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 0 1; varGCD=2 no mod constant! 1 + 6*x_2 + 6*x_2^2 + 2*y_2 + 6*y_2^2 - 4*z_2 - 6*z_2^2
  4;x_1;y_1;z_1; 3 0 1; varGCD=8 no mod constant! 23 + 72*x_2 + 48*x_2^2 + 16*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 1 1; varGCD=8 no mod constant! 3 + 48*x_2^2 + 40*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 1 1; varGCD=4 no mod constant! 3 + 12*x_2 + 24*x_2^2 + 20*y_2 + 24*y_2^2 - 16*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 2 1 1; varGCD=8 no mod constant! 15 + 48*x_2 + 48*x_2^2 + 40*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 1 1; varGCD=4 no mod constant! 15 + 36*x_2 + 24*x_2^2 + 20*y_2 + 24*y_2^2 - 16*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 0 2 1; no varGCD? INFINITE DESCENT: 2 -> 1 <---------- 1 + 3*x_1^2 + 4*y_1 + 3*y_1^2 - 2*z_1 - 3*z_1^2 <equiv>  1 + 3*x_2^2 + 4*y_2 + 3*y_2^2 - 2*z_2 - 3*z_2^2
  4;x_1;y_1;z_1; 1 2 1; varGCD=8 no mod constant! 19 + 24*x_2 + 48*x_2^2 + 64*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 2 1; varGCD=4 no mod constant! 7 + 12*x_2 + 12*x_2^2 + 16*y_2 + 12*y_2^2 - 8*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 3 2 1; varGCD=8 no mod constant! 43 + 72*x_2 + 48*x_2^2 + 64*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 3 1; varGCD=8 no mod constant! 35 + 48*x_2^2 + 88*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 3 1; varGCD=4 no mod constant! 19 + 12*x_2 + 24*x_2^2 + 44*y_2 + 24*y_2^2 - 16*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 2 3 1; varGCD=8 no mod constant! 47 + 48*x_2 + 48*x_2^2 + 88*y_2 + 48*y_2^2 - 32*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 3 1; varGCD=4 no mod constant! 31 + 36*x_2 + 24*x_2^2 + 44*y_2 + 24*y_2^2 - 16*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 0 0 2; varGCD=8 no mod constant!  - 15 + 48*x_2^2 + 16*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 0 2; varGCD=2 no mod constant!  - 3 + 6*x_2 + 12*x_2^2 + 4*y_2 + 12*y_2^2 - 14*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 2 0 2; varGCD=8 no mod constant!  - 3 + 48*x_2 + 48*x_2^2 + 16*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 0 2; varGCD=2 no mod constant! 3 + 18*x_2 + 12*x_2^2 + 4*y_2 + 12*y_2^2 - 14*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 0 1 2; no varGCD?  - 1 + 6*x_2^2 + 5*y_2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 1 2; varGCD=8 no mod constant!  - 5 + 24*x_2 + 48*x_2^2 + 40*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 1 2; varGCD=2 no mod constant! 1 + 12*x_2 + 12*x_2^2 + 10*y_2 + 12*y_2^2 - 14*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 3 1 2; varGCD=8 no mod constant! 19 + 72*x_2 + 48*x_2^2 + 40*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 2 2; varGCD=8 no mod constant! 5 + 48*x_2^2 + 64*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 2 2; no varGCD? 1 + 3*x_2 + 6*x_2^2 + 8*y_2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 2 2; varGCD=8 no mod constant! 17 + 48*x_2 + 48*x_2^2 + 64*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 2 2; no varGCD? 4 + 9*x_2 + 6*x_2^2 + 8*y_2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 3 2; no varGCD? 3 + 6*x_2^2 + 11*y_2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 3 2; varGCD=8 no mod constant! 27 + 24*x_2 + 48*x_2^2 + 88*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 3 2; varGCD=2 no mod constant! 9 + 12*x_2 + 12*x_2^2 + 22*y_2 + 12*y_2^2 - 14*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 3 3 2; varGCD=8 no mod constant! 51 + 72*x_2 + 48*x_2^2 + 88*y_2 + 48*y_2^2 - 56*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 0 3; no varGCD?  - 2 + 3*x_2^2 + y_2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 0 3; varGCD=8 no mod constant!  - 29 + 24*x_2 + 48*x_2^2 + 16*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 0 3; varGCD=4 no mod constant!  - 5 + 12*x_2 + 12*x_2^2 + 4*y_2 + 12*y_2^2 - 20*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 3 0 3; varGCD=8 no mod constant!  - 5 + 72*x_2 + 48*x_2^2 + 16*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 1 3; varGCD=8 no mod constant!  - 25 + 48*x_2^2 + 40*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 1 3; varGCD=4 no mod constant!  - 11 + 12*x_2 + 24*x_2^2 + 20*y_2 + 24*y_2^2 - 40*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 2 1 3; varGCD=8 no mod constant!  - 13 + 48*x_2 + 48*x_2^2 + 40*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 1 3; varGCD=4 no mod constant! 1 + 36*x_2 + 24*x_2^2 + 20*y_2 + 24*y_2^2 - 40*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 0 2 3; varGCD=4 no mod constant!  - 3 + 12*x_2^2 + 16*y_2 + 12*y_2^2 - 20*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 1 2 3; varGCD=8 no mod constant!  - 9 + 24*x_2 + 48*x_2^2 + 64*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 2 3; variables only? 3*x_2 + 3*x_2^2 + 4*y_2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 2 3; varGCD=8 no mod constant! 15 + 72*x_2 + 48*x_2^2 + 64*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 3 3; varGCD=8 no mod constant! 7 + 48*x_2^2 + 88*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 3 3; varGCD=4 no mod constant! 5 + 12*x_2 + 24*x_2^2 + 44*y_2 + 24*y_2^2 - 40*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 2 3 3; varGCD=8 no mod constant! 19 + 48*x_2 + 48*x_2^2 + 88*y_2 + 48*y_2^2 - 80*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 3 3; varGCD=4 no mod constant! 17 + 36*x_2 + 24*x_2^2 + 44*y_2 + 24*y_2^2 - 40*z_2 - 24*z_2^2

3;x;y;z; 1 2 1; varGCD=3 no mod constant! 4 + 6*x_1 + 9*x_1^2 + 12*y_1 + 9*y_1^2 - 6*z_1 - 9*z_1^2
3;x;y;z; 2 2 1; varGCD=3 no mod constant! 7 + 12*x_1 + 9*x_1^2 + 12*y_1 + 9*y_1^2 - 6*z_1 - 9*z_1^2
3;x;y;z; 0 0 2; varGCD=3 no mod constant!  - 4 + 9*x_1^2 + 9*y_1^2 - 12*z_1 - 9*z_1^2
3;x;y;z; 1 0 2; no varGCD?  - 1 + 2*x_1 + 3*x_1^2 + 3*y_1^2 - 4*z_1 - 3*z_1^2
  SOLUTION!
  partial PROOF!

3;x;y;z; 2 0 2; variables only? 4*x_1 + 3*x_1^2 + 3*y_1^2 - 4*z_1 - 3*z_1^2
  2;x_1;y_1;z_1; 0 0 0; var. set not primitive! 2*x_2 + 3*x_2^2 + 3*y_2^2 - 2*z_2 - 3*z_2^2
  2;x_1;y_1;z_1; 1 0 0; varGCD=4 no mod constant! 7 + 20*x_2 + 12*x_2^2 + 12*y_2^2 - 8*z_2 - 12*z_2^2
  2;x_1;y_1;z_1; 0 1 0; varGCD=4 no mod constant! 3 + 8*x_2 + 12*x_2^2 + 12*y_2 + 12*y_2^2 - 8*z_2 - 12*z_2^2
  2;x_1;y_1;z_1; 1 1 0; varGCD=2 no mod constant! 5 + 10*x_2 + 6*x_2^2 + 6*y_2 + 6*y_2^2 - 4*z_2 - 6*z_2^2
  2;x_1;y_1;z_1; 0 0 1; varGCD=4 no mod constant!  - 7 + 8*x_2 + 12*x_2^2 + 12*y_2^2 - 20*z_2 - 12*z_2^2
  2;x_1;y_1;z_1; 1 0 1; variables only? 5*x_2 + 3*x_2^2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  2;x_1;y_1;z_1; 0 1 1; no varGCD?  - 1 + 2*x_2 + 3*x_2^2 + 3*y_2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 1 1; varGCD=4 no mod constant! 3 + 20*x_2 + 12*x_2^2 + 12*y_2 + 12*y_2^2 - 20*z_2 - 12*z_2^2

  3;x_1;y_1;z_1; 0 0 0; var. set not primitive! 4*x_2 + 9*x_2^2 + 9*y_2^2 - 4*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 0 0; varGCD=3 no mod constant! 7 + 30*x_2 + 27*x_2^2 + 27*y_2^2 - 12*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 0 0; varGCD=3 no mod constant! 20 + 48*x_2 + 27*x_2^2 + 27*y_2^2 - 12*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 1 0; no varGCD? 1 + 4*x_2 + 9*x_2^2 + 6*y_2 + 9*y_2^2 - 4*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 1 0; varGCD=3 no mod constant! 10 + 30*x_2 + 27*x_2^2 + 18*y_2 + 27*y_2^2 - 12*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 1 0; varGCD=3 no mod constant! 23 + 48*x_2 + 27*x_2^2 + 18*y_2 + 27*y_2^2 - 12*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 2 0; no varGCD? 4 + 4*x_2 + 9*x_2^2 + 12*y_2 + 9*y_2^2 - 4*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 2 0; varGCD=3 no mod constant! 19 + 30*x_2 + 27*x_2^2 + 36*y_2 + 27*y_2^2 - 12*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 2 0; varGCD=3 no mod constant! 32 + 48*x_2 + 27*x_2^2 + 36*y_2 + 27*y_2^2 - 12*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 0 1; varGCD=3 no mod constant!  - 7 + 12*x_2 + 27*x_2^2 + 27*y_2^2 - 30*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 0 1; variables only? 10*x_2 + 9*x_2^2 + 9*y_2^2 - 10*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 0 1; varGCD=3 no mod constant! 13 + 48*x_2 + 27*x_2^2 + 27*y_2^2 - 30*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 1 1; varGCD=3 no mod constant!  - 4 + 12*x_2 + 27*x_2^2 + 18*y_2 + 27*y_2^2 - 30*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 1 1; no varGCD? 1 + 10*x_2 + 9*x_2^2 + 6*y_2 + 9*y_2^2 - 10*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 1 1; varGCD=3 no mod constant! 16 + 48*x_2 + 27*x_2^2 + 18*y_2 + 27*y_2^2 - 30*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 2 1; varGCD=3 no mod constant! 5 + 12*x_2 + 27*x_2^2 + 36*y_2 + 27*y_2^2 - 30*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 2 1; no varGCD? 4 + 10*x_2 + 9*x_2^2 + 12*y_2 + 9*y_2^2 - 10*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 2 1; varGCD=3 no mod constant! 25 + 48*x_2 + 27*x_2^2 + 36*y_2 + 27*y_2^2 - 30*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 0 2; varGCD=3 no mod constant!  - 20 + 12*x_2 + 27*x_2^2 + 27*y_2^2 - 48*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 0 2; varGCD=3 no mod constant!  - 13 + 30*x_2 + 27*x_2^2 + 27*y_2^2 - 48*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 0 2; variables only? 16*x_2 + 9*x_2^2 + 9*y_2^2 - 16*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 1 2; varGCD=3 no mod constant!  - 17 + 12*x_2 + 27*x_2^2 + 18*y_2 + 27*y_2^2 - 48*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 1 2; varGCD=3 no mod constant!  - 10 + 30*x_2 + 27*x_2^2 + 18*y_2 + 27*y_2^2 - 48*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 1 2; no varGCD? 1 + 16*x_2 + 9*x_2^2 + 6*y_2 + 9*y_2^2 - 16*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 2 2; varGCD=3 no mod constant!  - 8 + 12*x_2 + 27*x_2^2 + 36*y_2 + 27*y_2^2 - 48*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 2 2; varGCD=3 no mod constant!  - 1 + 30*x_2 + 27*x_2^2 + 36*y_2 + 27*y_2^2 - 48*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 2 2; no varGCD? 4 + 16*x_2 + 9*x_2^2 + 12*y_2 + 9*y_2^2 - 16*z_2 - 9*z_2^2 overflow!

  4;x_1;y_1;z_1; 0 0 0; var. set not primitive! x_2 + 3*x_2^2 + 3*y_2^2 - z_2 - 3*z_2^2
  4;x_1;y_1;z_1; 1 0 0; varGCD=8 no mod constant! 7 + 40*x_2 + 48*x_2^2 + 48*y_2^2 - 16*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 0 0; varGCD=4 no mod constant! 5 + 16*x_2 + 12*x_2^2 + 12*y_2^2 - 4*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 3 0 0; varGCD=8 no mod constant! 39 + 88*x_2 + 48*x_2^2 + 48*y_2^2 - 16*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 1 0; varGCD=8 no mod constant! 3 + 16*x_2 + 48*x_2^2 + 24*y_2 + 48*y_2^2 - 16*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 1 0; varGCD=4 no mod constant! 5 + 20*x_2 + 24*x_2^2 + 12*y_2 + 24*y_2^2 - 8*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 2 1 0; varGCD=8 no mod constant! 23 + 64*x_2 + 48*x_2^2 + 24*y_2 + 48*y_2^2 - 16*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 1 0; varGCD=4 no mod constant! 21 + 44*x_2 + 24*x_2^2 + 12*y_2 + 24*y_2^2 - 8*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 0 2 0; varGCD=4 no mod constant! 3 + 4*x_2 + 12*x_2^2 + 12*y_2 + 12*y_2^2 - 4*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 1 2 0; varGCD=8 no mod constant! 19 + 40*x_2 + 48*x_2^2 + 48*y_2 + 48*y_2^2 - 16*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 2 0; no varGCD? 2 + 4*x_2 + 3*x_2^2 + 3*y_2 + 3*y_2^2 - z_2 - 3*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 2 0; varGCD=8 no mod constant! 51 + 88*x_2 + 48*x_2^2 + 48*y_2 + 48*y_2^2 - 16*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 3 0; varGCD=8 no mod constant! 27 + 16*x_2 + 48*x_2^2 + 72*y_2 + 48*y_2^2 - 16*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 3 0; varGCD=4 no mod constant! 17 + 20*x_2 + 24*x_2^2 + 36*y_2 + 24*y_2^2 - 8*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 2 3 0; varGCD=8 no mod constant! 47 + 64*x_2 + 48*x_2^2 + 72*y_2 + 48*y_2^2 - 16*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 3 0; varGCD=4 no mod constant! 33 + 44*x_2 + 24*x_2^2 + 36*y_2 + 24*y_2^2 - 8*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 0 0 1; varGCD=8 no mod constant!  - 7 + 16*x_2 + 48*x_2^2 + 48*y_2^2 - 40*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 0 1; variables only? 5*x_2 + 6*x_2^2 + 6*y_2^2 - 5*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 0 1; varGCD=8 no mod constant! 13 + 64*x_2 + 48*x_2^2 + 48*y_2^2 - 40*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 0 1; no varGCD? 4 + 11*x_2 + 6*x_2^2 + 6*y_2^2 - 5*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 1 1; varGCD=2 no mod constant!  - 1 + 4*x_2 + 12*x_2^2 + 6*y_2 + 12*y_2^2 - 10*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 1 1 1; varGCD=8 no mod constant! 3 + 40*x_2 + 48*x_2^2 + 24*y_2 + 48*y_2^2 - 40*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 1 1; no varGCD? 2 + 8*x_2 + 6*x_2^2 + 3*y_2 + 6*y_2^2 - 5*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 1 1; varGCD=8 no mod constant! 35 + 88*x_2 + 48*x_2^2 + 24*y_2 + 48*y_2^2 - 40*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 2 1; varGCD=8 no mod constant! 5 + 16*x_2 + 48*x_2^2 + 48*y_2 + 48*y_2^2 - 40*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 2 1; varGCD=2 no mod constant! 3 + 10*x_2 + 12*x_2^2 + 12*y_2 + 12*y_2^2 - 10*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 2 2 1; varGCD=8 no mod constant! 25 + 64*x_2 + 48*x_2^2 + 48*y_2 + 48*y_2^2 - 40*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 2 1; varGCD=2 no mod constant! 11 + 22*x_2 + 12*x_2^2 + 12*y_2 + 12*y_2^2 - 10*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 0 3 1; varGCD=2 no mod constant! 5 + 4*x_2 + 12*x_2^2 + 18*y_2 + 12*y_2^2 - 10*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 1 3 1; varGCD=8 no mod constant! 27 + 40*x_2 + 48*x_2^2 + 72*y_2 + 48*y_2^2 - 40*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 3 1; no varGCD? 5 + 8*x_2 + 6*x_2^2 + 9*y_2 + 6*y_2^2 - 5*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 3 1; varGCD=8 no mod constant! 59 + 88*x_2 + 48*x_2^2 + 72*y_2 + 48*y_2^2 - 40*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 0 2; varGCD=4 no mod constant!  - 5 + 4*x_2 + 12*x_2^2 + 12*y_2^2 - 16*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 1 0 2; varGCD=8 no mod constant!  - 13 + 40*x_2 + 48*x_2^2 + 48*y_2^2 - 64*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 0 2; variables only? INFINITE DESCENT: 2 -> 1 <---------- 4*x_1 + 3*x_1^2 + 3*y_1^2 - 4*z_1 - 3*z_1^2 <equiv>  4*x_2 + 3*x_2^2 + 3*y_2^2 - 4*z_2 - 3*z_2^2
  4;x_1;y_1;z_1; 3 0 2; varGCD=8 no mod constant! 19 + 88*x_2 + 48*x_2^2 + 48*y_2^2 - 64*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 1 2; varGCD=8 no mod constant!  - 17 + 16*x_2 + 48*x_2^2 + 24*y_2 + 48*y_2^2 - 64*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 1 2; varGCD=4 no mod constant!  - 5 + 20*x_2 + 24*x_2^2 + 12*y_2 + 24*y_2^2 - 32*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 2 1 2; varGCD=8 no mod constant! 3 + 64*x_2 + 48*x_2^2 + 24*y_2 + 48*y_2^2 - 64*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 1 2; varGCD=4 no mod constant! 11 + 44*x_2 + 24*x_2^2 + 12*y_2 + 24*y_2^2 - 32*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 0 2 2; varGCD=2 no mod constant!  - 1 + 2*x_2 + 6*x_2^2 + 6*y_2 + 6*y_2^2 - 8*z_2 - 6*z_2^2
  4;x_1;y_1;z_1; 1 2 2; varGCD=8 no mod constant!  - 1 + 40*x_2 + 48*x_2^2 + 48*y_2 + 48*y_2^2 - 64*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 2 2; varGCD=4 no mod constant! 3 + 16*x_2 + 12*x_2^2 + 12*y_2 + 12*y_2^2 - 16*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 3 2 2; varGCD=8 no mod constant! 31 + 88*x_2 + 48*x_2^2 + 48*y_2 + 48*y_2^2 - 64*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 3 2; varGCD=8 no mod constant! 7 + 16*x_2 + 48*x_2^2 + 72*y_2 + 48*y_2^2 - 64*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 3 2; varGCD=4 no mod constant! 7 + 20*x_2 + 24*x_2^2 + 36*y_2 + 24*y_2^2 - 32*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 2 3 2; varGCD=8 no mod constant! 27 + 64*x_2 + 48*x_2^2 + 72*y_2 + 48*y_2^2 - 64*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 3 2; varGCD=4 no mod constant! 23 + 44*x_2 + 24*x_2^2 + 36*y_2 + 24*y_2^2 - 32*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 0 0 3; varGCD=8 no mod constant!  - 39 + 16*x_2 + 48*x_2^2 + 48*y_2^2 - 88*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 0 3; no varGCD?  - 4 + 5*x_2 + 6*x_2^2 + 6*y_2^2 - 11*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 0 3; varGCD=8 no mod constant!  - 19 + 64*x_2 + 48*x_2^2 + 48*y_2^2 - 88*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 0 3; variables only? 11*x_2 + 6*x_2^2 + 6*y_2^2 - 11*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 1 3; varGCD=2 no mod constant!  - 9 + 4*x_2 + 12*x_2^2 + 6*y_2 + 12*y_2^2 - 22*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 1 1 3; varGCD=8 no mod constant!  - 29 + 40*x_2 + 48*x_2^2 + 24*y_2 + 48*y_2^2 - 88*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 1 3; no varGCD?  - 2 + 8*x_2 + 6*x_2^2 + 3*y_2 + 6*y_2^2 - 11*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 1 3; varGCD=8 no mod constant! 3 + 88*x_2 + 48*x_2^2 + 24*y_2 + 48*y_2^2 - 88*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 2 3; varGCD=8 no mod constant!  - 27 + 16*x_2 + 48*x_2^2 + 48*y_2 + 48*y_2^2 - 88*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 2 3; varGCD=2 no mod constant!  - 5 + 10*x_2 + 12*x_2^2 + 12*y_2 + 12*y_2^2 - 22*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 2 2 3; varGCD=8 no mod constant!  - 7 + 64*x_2 + 48*x_2^2 + 48*y_2 + 48*y_2^2 - 88*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 2 3; varGCD=2 no mod constant! 3 + 22*x_2 + 12*x_2^2 + 12*y_2 + 12*y_2^2 - 22*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 0 3 3; varGCD=2 no mod constant!  - 3 + 4*x_2 + 12*x_2^2 + 18*y_2 + 12*y_2^2 - 22*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 1 3 3; varGCD=8 no mod constant!  - 5 + 40*x_2 + 48*x_2^2 + 72*y_2 + 48*y_2^2 - 88*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 3 3; no varGCD? 1 + 8*x_2 + 6*x_2^2 + 9*y_2 + 6*y_2^2 - 11*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 3 3; varGCD=8 no mod constant! 27 + 88*x_2 + 48*x_2^2 + 72*y_2 + 48*y_2^2 - 88*z_2 - 48*z_2^2

3;x;y;z; 0 1 2; no varGCD?  - 1 + 3*x_1^2 + 2*y_1 + 3*y_1^2 - 4*z_1 - 3*z_1^2
  SOLUTION!
  partial PROOF!

3;x;y;z; 1 1 2; varGCD=3 no mod constant!  - 2 + 6*x_1 + 9*x_1^2 + 6*y_1 + 9*y_1^2 - 12*z_1 - 9*z_1^2
3;x;y;z; 2 1 2; varGCD=3 no mod constant! 1 + 12*x_1 + 9*x_1^2 + 6*y_1 + 9*y_1^2 - 12*z_1 - 9*z_1^2
3;x;y;z; 0 2 2; variables only? 3*x_1^2 + 4*y_1 + 3*y_1^2 - 4*z_1 - 3*z_1^2
  2;x_1;y_1;z_1; 0 0 0; var. set not primitive! 3*x_2^2 + 2*y_2 + 3*y_2^2 - 2*z_2 - 3*z_2^2
  2;x_1;y_1;z_1; 1 0 0; varGCD=4 no mod constant! 3 + 12*x_2 + 12*x_2^2 + 8*y_2 + 12*y_2^2 - 8*z_2 - 12*z_2^2
  2;x_1;y_1;z_1; 0 1 0; varGCD=4 no mod constant! 7 + 12*x_2^2 + 20*y_2 + 12*y_2^2 - 8*z_2 - 12*z_2^2
  2;x_1;y_1;z_1; 1 1 0; varGCD=2 no mod constant! 5 + 6*x_2 + 6*x_2^2 + 10*y_2 + 6*y_2^2 - 4*z_2 - 6*z_2^2
  2;x_1;y_1;z_1; 0 0 1; varGCD=4 no mod constant!  - 7 + 12*x_2^2 + 8*y_2 + 12*y_2^2 - 20*z_2 - 12*z_2^2
  2;x_1;y_1;z_1; 1 0 1; no varGCD?  - 1 + 3*x_2 + 3*x_2^2 + 2*y_2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  2;x_1;y_1;z_1; 0 1 1; variables only? 3*x_2^2 + 5*y_2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 1 1; varGCD=4 no mod constant! 3 + 12*x_2 + 12*x_2^2 + 20*y_2 + 12*y_2^2 - 20*z_2 - 12*z_2^2

  3;x_1;y_1;z_1; 0 0 0; var. set not primitive! 9*x_2^2 + 4*y_2 + 9*y_2^2 - 4*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 0 0; no varGCD? 1 + 6*x_2 + 9*x_2^2 + 4*y_2 + 9*y_2^2 - 4*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 0 0; no varGCD? 4 + 12*x_2 + 9*x_2^2 + 4*y_2 + 9*y_2^2 - 4*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 1 0; varGCD=3 no mod constant! 7 + 27*x_2^2 + 30*y_2 + 27*y_2^2 - 12*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 1 0; varGCD=3 no mod constant! 10 + 18*x_2 + 27*x_2^2 + 30*y_2 + 27*y_2^2 - 12*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 1 0; varGCD=3 no mod constant! 19 + 36*x_2 + 27*x_2^2 + 30*y_2 + 27*y_2^2 - 12*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 2 0; varGCD=3 no mod constant! 20 + 27*x_2^2 + 48*y_2 + 27*y_2^2 - 12*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 2 0; varGCD=3 no mod constant! 23 + 18*x_2 + 27*x_2^2 + 48*y_2 + 27*y_2^2 - 12*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 2 0; varGCD=3 no mod constant! 32 + 36*x_2 + 27*x_2^2 + 48*y_2 + 27*y_2^2 - 12*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 0 1; varGCD=3 no mod constant!  - 7 + 27*x_2^2 + 12*y_2 + 27*y_2^2 - 30*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 0 1; varGCD=3 no mod constant!  - 4 + 18*x_2 + 27*x_2^2 + 12*y_2 + 27*y_2^2 - 30*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 0 1; varGCD=3 no mod constant! 5 + 36*x_2 + 27*x_2^2 + 12*y_2 + 27*y_2^2 - 30*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 1 1; variables only? 9*x_2^2 + 10*y_2 + 9*y_2^2 - 10*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 1 1; no varGCD? 1 + 6*x_2 + 9*x_2^2 + 10*y_2 + 9*y_2^2 - 10*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 1 1; no varGCD? 4 + 12*x_2 + 9*x_2^2 + 10*y_2 + 9*y_2^2 - 10*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 2 1; varGCD=3 no mod constant! 13 + 27*x_2^2 + 48*y_2 + 27*y_2^2 - 30*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 2 1; varGCD=3 no mod constant! 16 + 18*x_2 + 27*x_2^2 + 48*y_2 + 27*y_2^2 - 30*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 2 1; varGCD=3 no mod constant! 25 + 36*x_2 + 27*x_2^2 + 48*y_2 + 27*y_2^2 - 30*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 0 2; varGCD=3 no mod constant!  - 20 + 27*x_2^2 + 12*y_2 + 27*y_2^2 - 48*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 0 2; varGCD=3 no mod constant!  - 17 + 18*x_2 + 27*x_2^2 + 12*y_2 + 27*y_2^2 - 48*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 0 2; varGCD=3 no mod constant!  - 8 + 36*x_2 + 27*x_2^2 + 12*y_2 + 27*y_2^2 - 48*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 1 2; varGCD=3 no mod constant!  - 13 + 27*x_2^2 + 30*y_2 + 27*y_2^2 - 48*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 1 1 2; varGCD=3 no mod constant!  - 10 + 18*x_2 + 27*x_2^2 + 30*y_2 + 27*y_2^2 - 48*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 2 1 2; varGCD=3 no mod constant!  - 1 + 36*x_2 + 27*x_2^2 + 30*y_2 + 27*y_2^2 - 48*z_2 - 27*z_2^2
  3;x_1;y_1;z_1; 0 2 2; variables only? 9*x_2^2 + 16*y_2 + 9*y_2^2 - 16*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 2 2; no varGCD? 1 + 6*x_2 + 9*x_2^2 + 16*y_2 + 9*y_2^2 - 16*z_2 - 9*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 2 2; no varGCD? 4 + 12*x_2 + 9*x_2^2 + 16*y_2 + 9*y_2^2 - 16*z_2 - 9*z_2^2 overflow!

  4;x_1;y_1;z_1; 0 0 0; var. set not primitive! 3*x_2^2 + y_2 + 3*y_2^2 - z_2 - 3*z_2^2
  4;x_1;y_1;z_1; 1 0 0; varGCD=8 no mod constant! 3 + 24*x_2 + 48*x_2^2 + 16*y_2 + 48*y_2^2 - 16*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 0 0; varGCD=4 no mod constant! 3 + 12*x_2 + 12*x_2^2 + 4*y_2 + 12*y_2^2 - 4*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 3 0 0; varGCD=8 no mod constant! 27 + 72*x_2 + 48*x_2^2 + 16*y_2 + 48*y_2^2 - 16*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 1 0; varGCD=8 no mod constant! 7 + 48*x_2^2 + 40*y_2 + 48*y_2^2 - 16*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 1 0; varGCD=4 no mod constant! 5 + 12*x_2 + 24*x_2^2 + 20*y_2 + 24*y_2^2 - 8*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 2 1 0; varGCD=8 no mod constant! 19 + 48*x_2 + 48*x_2^2 + 40*y_2 + 48*y_2^2 - 16*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 1 0; varGCD=4 no mod constant! 17 + 36*x_2 + 24*x_2^2 + 20*y_2 + 24*y_2^2 - 8*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 0 2 0; varGCD=4 no mod constant! 5 + 12*x_2^2 + 16*y_2 + 12*y_2^2 - 4*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 1 2 0; varGCD=8 no mod constant! 23 + 24*x_2 + 48*x_2^2 + 64*y_2 + 48*y_2^2 - 16*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 2 0; no varGCD? 2 + 3*x_2 + 3*x_2^2 + 4*y_2 + 3*y_2^2 - z_2 - 3*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 2 0; varGCD=8 no mod constant! 47 + 72*x_2 + 48*x_2^2 + 64*y_2 + 48*y_2^2 - 16*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 3 0; varGCD=8 no mod constant! 39 + 48*x_2^2 + 88*y_2 + 48*y_2^2 - 16*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 3 0; varGCD=4 no mod constant! 21 + 12*x_2 + 24*x_2^2 + 44*y_2 + 24*y_2^2 - 8*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 2 3 0; varGCD=8 no mod constant! 51 + 48*x_2 + 48*x_2^2 + 88*y_2 + 48*y_2^2 - 16*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 3 0; varGCD=4 no mod constant! 33 + 36*x_2 + 24*x_2^2 + 44*y_2 + 24*y_2^2 - 8*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 0 0 1; varGCD=8 no mod constant!  - 7 + 48*x_2^2 + 16*y_2 + 48*y_2^2 - 40*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 0 1; varGCD=2 no mod constant!  - 1 + 6*x_2 + 12*x_2^2 + 4*y_2 + 12*y_2^2 - 10*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 2 0 1; varGCD=8 no mod constant! 5 + 48*x_2 + 48*x_2^2 + 16*y_2 + 48*y_2^2 - 40*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 0 1; varGCD=2 no mod constant! 5 + 18*x_2 + 12*x_2^2 + 4*y_2 + 12*y_2^2 - 10*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 0 1 1; variables only? 6*x_2^2 + 5*y_2 + 6*y_2^2 - 5*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 1 1; varGCD=8 no mod constant! 3 + 24*x_2 + 48*x_2^2 + 40*y_2 + 48*y_2^2 - 40*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 1 1; varGCD=2 no mod constant! 3 + 12*x_2 + 12*x_2^2 + 10*y_2 + 12*y_2^2 - 10*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 3 1 1; varGCD=8 no mod constant! 27 + 72*x_2 + 48*x_2^2 + 40*y_2 + 48*y_2^2 - 40*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 2 1; varGCD=8 no mod constant! 13 + 48*x_2^2 + 64*y_2 + 48*y_2^2 - 40*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 2 1; no varGCD? 2 + 3*x_2 + 6*x_2^2 + 8*y_2 + 6*y_2^2 - 5*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 2 1; varGCD=8 no mod constant! 25 + 48*x_2 + 48*x_2^2 + 64*y_2 + 48*y_2^2 - 40*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 2 1; no varGCD? 5 + 9*x_2 + 6*x_2^2 + 8*y_2 + 6*y_2^2 - 5*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 3 1; no varGCD? 4 + 6*x_2^2 + 11*y_2 + 6*y_2^2 - 5*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 3 1; varGCD=8 no mod constant! 35 + 24*x_2 + 48*x_2^2 + 88*y_2 + 48*y_2^2 - 40*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 3 1; varGCD=2 no mod constant! 11 + 12*x_2 + 12*x_2^2 + 22*y_2 + 12*y_2^2 - 10*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 3 3 1; varGCD=8 no mod constant! 59 + 72*x_2 + 48*x_2^2 + 88*y_2 + 48*y_2^2 - 40*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 0 2; varGCD=4 no mod constant!  - 5 + 12*x_2^2 + 4*y_2 + 12*y_2^2 - 16*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 1 0 2; varGCD=8 no mod constant!  - 17 + 24*x_2 + 48*x_2^2 + 16*y_2 + 48*y_2^2 - 64*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 0 2; varGCD=2 no mod constant!  - 1 + 6*x_2 + 6*x_2^2 + 2*y_2 + 6*y_2^2 - 8*z_2 - 6*z_2^2
  4;x_1;y_1;z_1; 3 0 2; varGCD=8 no mod constant! 7 + 72*x_2 + 48*x_2^2 + 16*y_2 + 48*y_2^2 - 64*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 1 2; varGCD=8 no mod constant!  - 13 + 48*x_2^2 + 40*y_2 + 48*y_2^2 - 64*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 1 2; varGCD=4 no mod constant!  - 5 + 12*x_2 + 24*x_2^2 + 20*y_2 + 24*y_2^2 - 32*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 2 1 2; varGCD=8 no mod constant!  - 1 + 48*x_2 + 48*x_2^2 + 40*y_2 + 48*y_2^2 - 64*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 1 2; varGCD=4 no mod constant! 7 + 36*x_2 + 24*x_2^2 + 20*y_2 + 24*y_2^2 - 32*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 0 2 2; variables only? INFINITE DESCENT: 2 -> 1 <---------- 3*x_1^2 + 4*y_1 + 3*y_1^2 - 4*z_1 - 3*z_1^2 <equiv>  3*x_2^2 + 4*y_2 + 3*y_2^2 - 4*z_2 - 3*z_2^2
  4;x_1;y_1;z_1; 1 2 2; varGCD=8 no mod constant! 3 + 24*x_2 + 48*x_2^2 + 64*y_2 + 48*y_2^2 - 64*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 2 2; varGCD=4 no mod constant! 3 + 12*x_2 + 12*x_2^2 + 16*y_2 + 12*y_2^2 - 16*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 3 2 2; varGCD=8 no mod constant! 27 + 72*x_2 + 48*x_2^2 + 64*y_2 + 48*y_2^2 - 64*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 3 2; varGCD=8 no mod constant! 19 + 48*x_2^2 + 88*y_2 + 48*y_2^2 - 64*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 3 2; varGCD=4 no mod constant! 11 + 12*x_2 + 24*x_2^2 + 44*y_2 + 24*y_2^2 - 32*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 2 3 2; varGCD=8 no mod constant! 31 + 48*x_2 + 48*x_2^2 + 88*y_2 + 48*y_2^2 - 64*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 3 2; varGCD=4 no mod constant! 23 + 36*x_2 + 24*x_2^2 + 44*y_2 + 24*y_2^2 - 32*z_2 - 24*z_2^2
  4;x_1;y_1;z_1; 0 0 3; varGCD=8 no mod constant!  - 39 + 48*x_2^2 + 16*y_2 + 48*y_2^2 - 88*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 0 3; varGCD=2 no mod constant!  - 9 + 6*x_2 + 12*x_2^2 + 4*y_2 + 12*y_2^2 - 22*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 2 0 3; varGCD=8 no mod constant!  - 27 + 48*x_2 + 48*x_2^2 + 16*y_2 + 48*y_2^2 - 88*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 0 3; varGCD=2 no mod constant!  - 3 + 18*x_2 + 12*x_2^2 + 4*y_2 + 12*y_2^2 - 22*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 0 1 3; no varGCD?  - 4 + 6*x_2^2 + 5*y_2 + 6*y_2^2 - 11*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 1 3; varGCD=8 no mod constant!  - 29 + 24*x_2 + 48*x_2^2 + 40*y_2 + 48*y_2^2 - 88*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 1 3; varGCD=2 no mod constant!  - 5 + 12*x_2 + 12*x_2^2 + 10*y_2 + 12*y_2^2 - 22*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 3 1 3; varGCD=8 no mod constant!  - 5 + 72*x_2 + 48*x_2^2 + 40*y_2 + 48*y_2^2 - 88*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 0 2 3; varGCD=8 no mod constant!  - 19 + 48*x_2^2 + 64*y_2 + 48*y_2^2 - 88*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 1 2 3; no varGCD?  - 2 + 3*x_2 + 6*x_2^2 + 8*y_2 + 6*y_2^2 - 11*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 2 3; varGCD=8 no mod constant!  - 7 + 48*x_2 + 48*x_2^2 + 64*y_2 + 48*y_2^2 - 88*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 3 2 3; no varGCD? 1 + 9*x_2 + 6*x_2^2 + 8*y_2 + 6*y_2^2 - 11*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 3 3; variables only? 6*x_2^2 + 11*y_2 + 6*y_2^2 - 11*z_2 - 6*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 3 3; varGCD=8 no mod constant! 3 + 24*x_2 + 48*x_2^2 + 88*y_2 + 48*y_2^2 - 88*z_2 - 48*z_2^2
  4;x_1;y_1;z_1; 2 3 3; varGCD=2 no mod constant! 3 + 12*x_2 + 12*x_2^2 + 22*y_2 + 12*y_2^2 - 22*z_2 - 12*z_2^2
  4;x_1;y_1;z_1; 3 3 3; varGCD=8 no mod constant! 27 + 72*x_2 + 48*x_2^2 + 88*y_2 + 48*y_2^2 - 88*z_2 - 48*z_2^2

3;x;y;z; 1 2 2; varGCD=3 no mod constant! 1 + 6*x_1 + 9*x_1^2 + 12*y_1 + 9*y_1^2 - 12*z_1 - 9*z_1^2
3;x;y;z; 2 2 2; varGCD=3 no mod constant! 4 + 12*x_1 + 9*x_1^2 + 12*y_1 + 9*y_1^2 - 12*z_1 - 9*z_1^2

4;x;y;z; 0 0 0; var. set not primitive! x_1^2 + y_1^2 - z_1^2
4;x;y;z; 1 0 0; varGCD=8 no mod constant! 1 + 8*x_1 + 16*x_1^2 + 16*y_1^2 - 16*z_1^2
4;x;y;z; 2 0 0; varGCD=4 no mod constant! 1 + 4*x_1 + 4*x_1^2 + 4*y_1^2 - 4*z_1^2
4;x;y;z; 3 0 0; varGCD=8 no mod constant! 9 + 24*x_1 + 16*x_1^2 + 16*y_1^2 - 16*z_1^2
4;x;y;z; 0 1 0; varGCD=8 no mod constant! 1 + 16*x_1^2 + 8*y_1 + 16*y_1^2 - 16*z_1^2
4;x;y;z; 1 1 0; varGCD=4 no mod constant! 1 + 4*x_1 + 8*x_1^2 + 4*y_1 + 8*y_1^2 - 8*z_1^2
4;x;y;z; 2 1 0; varGCD=8 no mod constant! 5 + 16*x_1 + 16*x_1^2 + 8*y_1 + 16*y_1^2 - 16*z_1^2
4;x;y;z; 3 1 0; varGCD=4 no mod constant! 5 + 12*x_1 + 8*x_1^2 + 4*y_1 + 8*y_1^2 - 8*z_1^2
4;x;y;z; 0 2 0; varGCD=4 no mod constant! 1 + 4*x_1^2 + 4*y_1 + 4*y_1^2 - 4*z_1^2
4;x;y;z; 1 2 0; varGCD=8 no mod constant! 5 + 8*x_1 + 16*x_1^2 + 16*y_1 + 16*y_1^2 - 16*z_1^2
4;x;y;z; 2 2 0; varGCD=2 no mod constant! 1 + 2*x_1 + 2*x_1^2 + 2*y_1 + 2*y_1^2 - 2*z_1^2
4;x;y;z; 3 2 0; varGCD=8 no mod constant! 13 + 24*x_1 + 16*x_1^2 + 16*y_1 + 16*y_1^2 - 16*z_1^2
4;x;y;z; 0 3 0; varGCD=8 no mod constant! 9 + 16*x_1^2 + 24*y_1 + 16*y_1^2 - 16*z_1^2
4;x;y;z; 1 3 0; varGCD=4 no mod constant! 5 + 4*x_1 + 8*x_1^2 + 12*y_1 + 8*y_1^2 - 8*z_1^2
4;x;y;z; 2 3 0; varGCD=8 no mod constant! 13 + 16*x_1 + 16*x_1^2 + 24*y_1 + 16*y_1^2 - 16*z_1^2
4;x;y;z; 3 3 0; varGCD=4 no mod constant! 9 + 12*x_1 + 8*x_1^2 + 12*y_1 + 8*y_1^2 - 8*z_1^2
4;x;y;z; 0 0 1; varGCD=8 no mod constant!  - 1 + 16*x_1^2 + 16*y_1^2 - 8*z_1 - 16*z_1^2
4;x;y;z; 1 0 1; variables only? x_1 + 2*x_1^2 + 2*y_1^2 - z_1 - 2*z_1^2
  2;x_1;y_1;z_1; 0 0 0; var. set not primitive! x_2 + 4*x_2^2 + 4*y_2^2 - z_2 - 4*z_2^2
  2;x_1;y_1;z_1; 1 0 0; varGCD=2 no mod constant! 3 + 10*x_2 + 8*x_2^2 + 8*y_2^2 - 2*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 0 1 0; no varGCD? 1 + x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - z_2 - 4*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 1 0; varGCD=2 no mod constant! 5 + 10*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 2*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 0 0 1; varGCD=2 no mod constant!  - 3 + 2*x_2 + 8*x_2^2 + 8*y_2^2 - 10*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 1 0 1; variables only? 5*x_2 + 4*x_2^2 + 4*y_2^2 - 5*z_2 - 4*z_2^2 overflow!
  2;x_1;y_1;z_1; 0 1 1; varGCD=2 no mod constant!  - 1 + 2*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 10*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 1 1 1; no varGCD? 1 + 5*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 5*z_2 - 4*z_2^2 overflow!

  3;x_1;y_1;z_1; 0 0 0; var. set not primitive! x_2 + 6*x_2^2 + 6*y_2^2 - z_2 - 6*z_2^2
  3;x_1;y_1;z_1; 1 0 0; no varGCD? 1 + 5*x_2 + 6*x_2^2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 0 0; varGCD=3 no mod constant! 10 + 27*x_2 + 18*x_2^2 + 18*y_2^2 - 3*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 1 0; varGCD=3 no mod constant! 2 + 3*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 3*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 1 0; varGCD=3 no mod constant! 5 + 15*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 3*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 1 0; no varGCD? 4 + 9*x_2 + 6*x_2^2 + 4*y_2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 2 0; varGCD=3 no mod constant! 8 + 3*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 3*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 2 0; varGCD=3 no mod constant! 11 + 15*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 3*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 2 0; no varGCD? 6 + 9*x_2 + 6*x_2^2 + 8*y_2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 0 1; no varGCD?  - 1 + x_2 + 6*x_2^2 + 6*y_2^2 - 5*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 0 1; variables only? 5*x_2 + 6*x_2^2 + 6*y_2^2 - 5*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 0 1; varGCD=3 no mod constant! 7 + 27*x_2 + 18*x_2^2 + 18*y_2^2 - 15*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 1 1; varGCD=3 no mod constant!  - 1 + 3*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 15*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 1 1; varGCD=3 no mod constant! 2 + 15*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 15*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 1 1; no varGCD? 3 + 9*x_2 + 6*x_2^2 + 4*y_2 + 6*y_2^2 - 5*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 2 1; varGCD=3 no mod constant! 5 + 3*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 15*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 2 1; varGCD=3 no mod constant! 8 + 15*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 15*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 2 1; no varGCD? 5 + 9*x_2 + 6*x_2^2 + 8*y_2 + 6*y_2^2 - 5*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 0 2; varGCD=3 no mod constant!  - 10 + 3*x_2 + 18*x_2^2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 0 2; varGCD=3 no mod constant!  - 7 + 15*x_2 + 18*x_2^2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 0 2; variables only? 3*x_2 + 2*x_2^2 + 2*y_2^2 - 3*z_2 - 2*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 1 2; varGCD=3 no mod constant!  - 8 + 3*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 1 2; varGCD=3 no mod constant!  - 5 + 15*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 1 2; varGCD=3 no mod constant! 2 + 27*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 2 2; varGCD=3 no mod constant!  - 2 + 3*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 2 2; varGCD=3 no mod constant! 1 + 15*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 2 2; varGCD=3 no mod constant! 8 + 27*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2

  4;x_1;y_1;z_1; 0 0 0; var. set not primitive! x_2 + 8*x_2^2 + 8*y_2^2 - z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 0 0; varGCD=4 no mod constant! 3 + 20*x_2 + 32*x_2^2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 0 0; varGCD=2 no mod constant! 5 + 18*x_2 + 16*x_2^2 + 16*y_2^2 - 2*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 0 0; varGCD=4 no mod constant! 21 + 52*x_2 + 32*x_2^2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 1 0; varGCD=2 no mod constant! 1 + 2*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 2*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 1 0; varGCD=4 no mod constant! 5 + 20*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 1 0; no varGCD? 3 + 9*x_2 + 8*x_2^2 + 4*y_2 + 8*y_2^2 - z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 1 0; varGCD=4 no mod constant! 23 + 52*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 2 0; no varGCD? 2 + x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 2 0; varGCD=4 no mod constant! 11 + 20*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 2 0; varGCD=2 no mod constant! 9 + 18*x_2 + 16*x_2^2 + 16*y_2 + 16*y_2^2 - 2*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 2 0; varGCD=4 no mod constant! 29 + 52*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 3 0; varGCD=2 no mod constant! 9 + 2*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 2*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 3 0; varGCD=4 no mod constant! 21 + 20*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 3 0; no varGCD? 7 + 9*x_2 + 8*x_2^2 + 12*y_2 + 8*y_2^2 - z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 3 0; varGCD=4 no mod constant! 39 + 52*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 0 1; varGCD=4 no mod constant!  - 3 + 4*x_2 + 32*x_2^2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 0 1; variables only? 5*x_2 + 8*x_2^2 + 8*y_2^2 - 5*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 0 1; varGCD=4 no mod constant! 7 + 36*x_2 + 32*x_2^2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 0 1; varGCD=2 no mod constant! 9 + 26*x_2 + 16*x_2^2 + 16*y_2^2 - 10*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 1 1; varGCD=4 no mod constant!  - 1 + 4*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 1 1; varGCD=2 no mod constant! 1 + 10*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 10*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 1 1; varGCD=4 no mod constant! 9 + 36*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 1 1; no varGCD? 5 + 13*x_2 + 8*x_2^2 + 4*y_2 + 8*y_2^2 - 5*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 2 1; varGCD=4 no mod constant! 5 + 4*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 2 1; no varGCD? 2 + 5*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 5*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 2 1; varGCD=4 no mod constant! 15 + 36*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 2 1; varGCD=2 no mod constant! 13 + 26*x_2 + 16*x_2^2 + 16*y_2 + 16*y_2^2 - 10*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 3 1; varGCD=4 no mod constant! 15 + 4*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 3 1; varGCD=2 no mod constant! 9 + 10*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 10*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 3 1; varGCD=4 no mod constant! 25 + 36*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 3 1; no varGCD? 9 + 13*x_2 + 8*x_2^2 + 12*y_2 + 8*y_2^2 - 5*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 0 2; varGCD=2 no mod constant!  - 5 + 2*x_2 + 16*x_2^2 + 16*y_2^2 - 18*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 0 2; varGCD=4 no mod constant!  - 7 + 20*x_2 + 32*x_2^2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 0 2; variables only? 9*x_2 + 8*x_2^2 + 8*y_2^2 - 9*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 0 2; varGCD=4 no mod constant! 11 + 52*x_2 + 32*x_2^2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 1 2; no varGCD?  - 2 + x_2 + 8*x_2^2 + 4*y_2 + 8*y_2^2 - 9*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 1 2; varGCD=4 no mod constant!  - 5 + 20*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 1 2; varGCD=2 no mod constant! 1 + 18*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 18*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 1 2; varGCD=4 no mod constant! 13 + 52*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 2 2; varGCD=2 no mod constant!  - 1 + 2*x_2 + 16*x_2^2 + 16*y_2 + 16*y_2^2 - 18*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 2 2; varGCD=4 no mod constant! 1 + 20*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 2 2; no varGCD? 2 + 9*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 9*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 2 2; varGCD=4 no mod constant! 19 + 52*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 3 2; no varGCD? 2 + x_2 + 8*x_2^2 + 12*y_2 + 8*y_2^2 - 9*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 3 2; varGCD=4 no mod constant! 11 + 20*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 3 2; varGCD=2 no mod constant! 9 + 18*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 18*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 3 2; varGCD=4 no mod constant! 29 + 52*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 0 3; varGCD=4 no mod constant!  - 21 + 4*x_2 + 32*x_2^2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 0 3; varGCD=2 no mod constant!  - 9 + 10*x_2 + 16*x_2^2 + 16*y_2^2 - 26*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 0 3; varGCD=4 no mod constant!  - 11 + 36*x_2 + 32*x_2^2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 0 3; variables only? 13*x_2 + 8*x_2^2 + 8*y_2^2 - 13*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 1 3; varGCD=4 no mod constant!  - 19 + 4*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 1 3; no varGCD?  - 4 + 5*x_2 + 8*x_2^2 + 4*y_2 + 8*y_2^2 - 13*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 1 3; varGCD=4 no mod constant!  - 9 + 36*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 1 3; varGCD=2 no mod constant! 1 + 26*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 26*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 2 3; varGCD=4 no mod constant!  - 13 + 4*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 2 3; varGCD=2 no mod constant!  - 5 + 10*x_2 + 16*x_2^2 + 16*y_2 + 16*y_2^2 - 26*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 2 3; varGCD=4 no mod constant!  - 3 + 36*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 2 3; no varGCD? 2 + 13*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 13*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 3 3; varGCD=4 no mod constant!  - 3 + 4*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 3 3; variables only? 5*x_2 + 8*x_2^2 + 12*y_2 + 8*y_2^2 - 13*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 3 3; varGCD=4 no mod constant! 7 + 36*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 3 3; varGCD=2 no mod constant! 9 + 26*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 26*z_2 - 16*z_2^2

4;x;y;z; 2 0 1; varGCD=8 no mod constant! 3 + 16*x_1 + 16*x_1^2 + 16*y_1^2 - 8*z_1 - 16*z_1^2
4;x;y;z; 3 0 1; no varGCD? 1 + 3*x_1 + 2*x_1^2 + 2*y_1^2 - z_1 - 2*z_1^2
  2;x_1;y_1;z_1; 0 0 0; varGCD=2 no mod constant! 1 + 6*x_2 + 8*x_2^2 + 8*y_2^2 - 2*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 1 0 0; no varGCD? 3 + 7*x_2 + 4*x_2^2 + 4*y_2^2 - z_2 - 4*z_2^2 overflow!
  2;x_1;y_1;z_1; 0 1 0; varGCD=2 no mod constant! 3 + 6*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 2*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 1 1 0; no varGCD? 4 + 7*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - z_2 - 4*z_2^2 overflow!
  2;x_1;y_1;z_1; 0 0 1; no varGCD?  - 1 + 3*x_2 + 4*x_2^2 + 4*y_2^2 - 5*z_2 - 4*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 0 1; varGCD=2 no mod constant! 3 + 14*x_2 + 8*x_2^2 + 8*y_2^2 - 10*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 0 1 1; variables only? 3*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 5*z_2 - 4*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 1 1; varGCD=2 no mod constant! 5 + 14*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 10*z_2 - 8*z_2^2

  3;x_1;y_1;z_1; 0 0 0; varGCD=3 no mod constant! 1 + 9*x_2 + 18*x_2^2 + 18*y_2^2 - 3*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 0 0; no varGCD? 2 + 7*x_2 + 6*x_2^2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 0 0; no varGCD? 5 + 11*x_2 + 6*x_2^2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 1 0; no varGCD? 1 + 3*x_2 + 6*x_2^2 + 4*y_2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 1 0; varGCD=3 no mod constant! 8 + 21*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 3*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 1 0; varGCD=3 no mod constant! 17 + 33*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 3*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 2 0; no varGCD? 3 + 3*x_2 + 6*x_2^2 + 8*y_2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 2 0; varGCD=3 no mod constant! 14 + 21*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 3*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 2 0; varGCD=3 no mod constant! 23 + 33*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 3*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 0 1; varGCD=3 no mod constant!  - 2 + 9*x_2 + 18*x_2^2 + 18*y_2^2 - 15*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 0 1; no varGCD? 1 + 7*x_2 + 6*x_2^2 + 6*y_2^2 - 5*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 0 1; no varGCD? 4 + 11*x_2 + 6*x_2^2 + 6*y_2^2 - 5*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 1 1; variables only? 3*x_2 + 6*x_2^2 + 4*y_2 + 6*y_2^2 - 5*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 1 1; varGCD=3 no mod constant! 5 + 21*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 15*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 1 1; varGCD=3 no mod constant! 14 + 33*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 15*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 2 1; no varGCD? 2 + 3*x_2 + 6*x_2^2 + 8*y_2 + 6*y_2^2 - 5*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 2 1; varGCD=3 no mod constant! 11 + 21*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 15*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 2 1; varGCD=3 no mod constant! 20 + 33*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 15*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 0 2; no varGCD?  - 1 + x_2 + 2*x_2^2 + 2*y_2^2 - 3*z_2 - 2*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 0 2; varGCD=3 no mod constant!  - 4 + 21*x_2 + 18*x_2^2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 0 2; varGCD=3 no mod constant! 5 + 33*x_2 + 18*x_2^2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 1 2; varGCD=3 no mod constant!  - 7 + 9*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 1 2; varGCD=3 no mod constant!  - 2 + 21*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 1 2; varGCD=3 no mod constant! 7 + 33*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 2 2; varGCD=3 no mod constant!  - 1 + 9*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 2 2; varGCD=3 no mod constant! 4 + 21*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 2 2; varGCD=3 no mod constant! 13 + 33*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2

  4;x_1;y_1;z_1; 0 0 0; varGCD=4 no mod constant! 1 + 12*x_2 + 32*x_2^2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 0 0; varGCD=2 no mod constant! 3 + 14*x_2 + 16*x_2^2 + 16*y_2^2 - 2*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 0 0; varGCD=4 no mod constant! 15 + 44*x_2 + 32*x_2^2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 0 0; no varGCD? 7 + 15*x_2 + 8*x_2^2 + 8*y_2^2 - z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 1 0; varGCD=4 no mod constant! 3 + 12*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 1 0; no varGCD? 2 + 7*x_2 + 8*x_2^2 + 4*y_2 + 8*y_2^2 - z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 1 0; varGCD=4 no mod constant! 17 + 44*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 1 0; varGCD=2 no mod constant! 15 + 30*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 2*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 2 0; varGCD=4 no mod constant! 9 + 12*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 2 0; varGCD=2 no mod constant! 7 + 14*x_2 + 16*x_2^2 + 16*y_2 + 16*y_2^2 - 2*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 2 0; varGCD=4 no mod constant! 23 + 44*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 2 0; no varGCD? 9 + 15*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 3 0; varGCD=4 no mod constant! 19 + 12*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 3 0; no varGCD? 6 + 7*x_2 + 8*x_2^2 + 12*y_2 + 8*y_2^2 - z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 3 0; varGCD=4 no mod constant! 33 + 44*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 3 0; varGCD=2 no mod constant! 23 + 30*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 2*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 0 1; varGCD=2 no mod constant!  - 1 + 6*x_2 + 16*x_2^2 + 16*y_2^2 - 10*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 0 1; varGCD=4 no mod constant! 3 + 28*x_2 + 32*x_2^2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 0 1; no varGCD? 3 + 11*x_2 + 8*x_2^2 + 8*y_2^2 - 5*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 0 1; varGCD=4 no mod constant! 25 + 60*x_2 + 32*x_2^2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 1 1; variables only? 3*x_2 + 8*x_2^2 + 4*y_2 + 8*y_2^2 - 5*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 1 1; varGCD=4 no mod constant! 5 + 28*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 1 1; varGCD=2 no mod constant! 7 + 22*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 10*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 1 1; varGCD=4 no mod constant! 27 + 60*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 2 1; varGCD=2 no mod constant! 3 + 6*x_2 + 16*x_2^2 + 16*y_2 + 16*y_2^2 - 10*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 2 1; varGCD=4 no mod constant! 11 + 28*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 2 1; no varGCD? 5 + 11*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 5*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 2 1; varGCD=4 no mod constant! 33 + 60*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 3 1; no varGCD? 4 + 3*x_2 + 8*x_2^2 + 12*y_2 + 8*y_2^2 - 5*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 3 1; varGCD=4 no mod constant! 21 + 28*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 3 1; varGCD=2 no mod constant! 15 + 22*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 10*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 3 1; varGCD=4 no mod constant! 43 + 60*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 0 2; varGCD=4 no mod constant!  - 9 + 12*x_2 + 32*x_2^2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 0 2; no varGCD?  - 1 + 7*x_2 + 8*x_2^2 + 8*y_2^2 - 9*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 0 2; varGCD=4 no mod constant! 5 + 44*x_2 + 32*x_2^2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 0 2; varGCD=2 no mod constant! 9 + 30*x_2 + 16*x_2^2 + 16*y_2^2 - 18*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 1 2; varGCD=4 no mod constant!  - 7 + 12*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 1 2; varGCD=2 no mod constant!  - 1 + 14*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 18*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 1 2; varGCD=4 no mod constant! 7 + 44*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 1 2; no varGCD? 5 + 15*x_2 + 8*x_2^2 + 4*y_2 + 8*y_2^2 - 9*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 2 2; varGCD=4 no mod constant!  - 1 + 12*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 2 2; no varGCD? 1 + 7*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 9*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 2 2; varGCD=4 no mod constant! 13 + 44*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 2 2; varGCD=2 no mod constant! 13 + 30*x_2 + 16*x_2^2 + 16*y_2 + 16*y_2^2 - 18*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 3 2; varGCD=4 no mod constant! 9 + 12*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 3 2; varGCD=2 no mod constant! 7 + 14*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 18*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 3 2; varGCD=4 no mod constant! 23 + 44*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 3 2; no varGCD? 9 + 15*x_2 + 8*x_2^2 + 12*y_2 + 8*y_2^2 - 9*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 0 3; no varGCD?  - 5 + 3*x_2 + 8*x_2^2 + 8*y_2^2 - 13*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 0 3; varGCD=4 no mod constant!  - 15 + 28*x_2 + 32*x_2^2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 0 3; varGCD=2 no mod constant!  - 3 + 22*x_2 + 16*x_2^2 + 16*y_2^2 - 26*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 0 3; varGCD=4 no mod constant! 7 + 60*x_2 + 32*x_2^2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 1 3; varGCD=2 no mod constant!  - 9 + 6*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 26*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 1 3; varGCD=4 no mod constant!  - 13 + 28*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 1 3; no varGCD?  - 1 + 11*x_2 + 8*x_2^2 + 4*y_2 + 8*y_2^2 - 13*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 1 3; varGCD=4 no mod constant! 9 + 60*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 2 3; no varGCD?  - 3 + 3*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 13*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 2 3; varGCD=4 no mod constant!  - 7 + 28*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 2 3; varGCD=2 no mod constant! 1 + 22*x_2 + 16*x_2^2 + 16*y_2 + 16*y_2^2 - 26*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 2 3; varGCD=4 no mod constant! 15 + 60*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 3 3; varGCD=2 no mod constant!  - 1 + 6*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 26*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 3 3; varGCD=4 no mod constant! 3 + 28*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 3 3; no varGCD? 3 + 11*x_2 + 8*x_2^2 + 12*y_2 + 8*y_2^2 - 13*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 3 3; varGCD=4 no mod constant! 25 + 60*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2

4;x;y;z; 0 1 1; variables only? 2*x_1^2 + y_1 + 2*y_1^2 - z_1 - 2*z_1^2
  2;x_1;y_1;z_1; 0 0 0; var. set not primitive! 4*x_2^2 + y_2 + 4*y_2^2 - z_2 - 4*z_2^2
  2;x_1;y_1;z_1; 1 0 0; no varGCD? 1 + 4*x_2 + 4*x_2^2 + y_2 + 4*y_2^2 - z_2 - 4*z_2^2 overflow!
  2;x_1;y_1;z_1; 0 1 0; varGCD=2 no mod constant! 3 + 8*x_2^2 + 10*y_2 + 8*y_2^2 - 2*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 1 1 0; varGCD=2 no mod constant! 5 + 8*x_2 + 8*x_2^2 + 10*y_2 + 8*y_2^2 - 2*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 0 0 1; varGCD=2 no mod constant!  - 3 + 8*x_2^2 + 2*y_2 + 8*y_2^2 - 10*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 1 0 1; varGCD=2 no mod constant!  - 1 + 8*x_2 + 8*x_2^2 + 2*y_2 + 8*y_2^2 - 10*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 0 1 1; variables only? 4*x_2^2 + 5*y_2 + 4*y_2^2 - 5*z_2 - 4*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 1 1; no varGCD? 1 + 4*x_2 + 4*x_2^2 + 5*y_2 + 4*y_2^2 - 5*z_2 - 4*z_2^2 overflow!

  3;x_1;y_1;z_1; 0 0 0; var. set not primitive! 6*x_2^2 + y_2 + 6*y_2^2 - z_2 - 6*z_2^2
  3;x_1;y_1;z_1; 1 0 0; varGCD=3 no mod constant! 2 + 12*x_2 + 18*x_2^2 + 3*y_2 + 18*y_2^2 - 3*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 0 0; varGCD=3 no mod constant! 8 + 24*x_2 + 18*x_2^2 + 3*y_2 + 18*y_2^2 - 3*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 1 0; no varGCD? 1 + 6*x_2^2 + 5*y_2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 1 0; varGCD=3 no mod constant! 5 + 12*x_2 + 18*x_2^2 + 15*y_2 + 18*y_2^2 - 3*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 1 0; varGCD=3 no mod constant! 11 + 24*x_2 + 18*x_2^2 + 15*y_2 + 18*y_2^2 - 3*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 2 0; varGCD=3 no mod constant! 10 + 18*x_2^2 + 27*y_2 + 18*y_2^2 - 3*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 2 0; no varGCD? 4 + 4*x_2 + 6*x_2^2 + 9*y_2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 2 0; no varGCD? 6 + 8*x_2 + 6*x_2^2 + 9*y_2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 0 1; no varGCD?  - 1 + 6*x_2^2 + y_2 + 6*y_2^2 - 5*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 0 1; varGCD=3 no mod constant!  - 1 + 12*x_2 + 18*x_2^2 + 3*y_2 + 18*y_2^2 - 15*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 0 1; varGCD=3 no mod constant! 5 + 24*x_2 + 18*x_2^2 + 3*y_2 + 18*y_2^2 - 15*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 1 1; variables only? 6*x_2^2 + 5*y_2 + 6*y_2^2 - 5*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 1 1; varGCD=3 no mod constant! 2 + 12*x_2 + 18*x_2^2 + 15*y_2 + 18*y_2^2 - 15*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 1 1; varGCD=3 no mod constant! 8 + 24*x_2 + 18*x_2^2 + 15*y_2 + 18*y_2^2 - 15*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 2 1; varGCD=3 no mod constant! 7 + 18*x_2^2 + 27*y_2 + 18*y_2^2 - 15*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 2 1; no varGCD? 3 + 4*x_2 + 6*x_2^2 + 9*y_2 + 6*y_2^2 - 5*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 2 1; no varGCD? 5 + 8*x_2 + 6*x_2^2 + 9*y_2 + 6*y_2^2 - 5*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 0 2; varGCD=3 no mod constant!  - 10 + 18*x_2^2 + 3*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 0 2; varGCD=3 no mod constant!  - 8 + 12*x_2 + 18*x_2^2 + 3*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 0 2; varGCD=3 no mod constant!  - 2 + 24*x_2 + 18*x_2^2 + 3*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 1 2; varGCD=3 no mod constant!  - 7 + 18*x_2^2 + 15*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 1 2; varGCD=3 no mod constant!  - 5 + 12*x_2 + 18*x_2^2 + 15*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 1 2; varGCD=3 no mod constant! 1 + 24*x_2 + 18*x_2^2 + 15*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 2 2; variables only? 2*x_2^2 + 3*y_2 + 2*y_2^2 - 3*z_2 - 2*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 2 2; varGCD=3 no mod constant! 2 + 12*x_2 + 18*x_2^2 + 27*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 2 2; varGCD=3 no mod constant! 8 + 24*x_2 + 18*x_2^2 + 27*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2

  4;x_1;y_1;z_1; 0 0 0; var. set not primitive! 8*x_2^2 + y_2 + 8*y_2^2 - z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 0 0; varGCD=2 no mod constant! 1 + 8*x_2 + 16*x_2^2 + 2*y_2 + 16*y_2^2 - 2*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 0 0; no varGCD? 2 + 8*x_2 + 8*x_2^2 + y_2 + 8*y_2^2 - z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 0 0; varGCD=2 no mod constant! 9 + 24*x_2 + 16*x_2^2 + 2*y_2 + 16*y_2^2 - 2*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 1 0; varGCD=4 no mod constant! 3 + 32*x_2^2 + 20*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 1 0; varGCD=4 no mod constant! 5 + 16*x_2 + 32*x_2^2 + 20*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 1 0; varGCD=4 no mod constant! 11 + 32*x_2 + 32*x_2^2 + 20*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 1 0; varGCD=4 no mod constant! 21 + 48*x_2 + 32*x_2^2 + 20*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 2 0; varGCD=2 no mod constant! 5 + 16*x_2^2 + 18*y_2 + 16*y_2^2 - 2*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 2 0; no varGCD? 3 + 4*x_2 + 8*x_2^2 + 9*y_2 + 8*y_2^2 - z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 2 0; varGCD=2 no mod constant! 9 + 16*x_2 + 16*x_2^2 + 18*y_2 + 16*y_2^2 - 2*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 2 0; no varGCD? 7 + 12*x_2 + 8*x_2^2 + 9*y_2 + 8*y_2^2 - z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 3 0; varGCD=4 no mod constant! 21 + 32*x_2^2 + 52*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 3 0; varGCD=4 no mod constant! 23 + 16*x_2 + 32*x_2^2 + 52*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 3 0; varGCD=4 no mod constant! 29 + 32*x_2 + 32*x_2^2 + 52*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 3 0; varGCD=4 no mod constant! 39 + 48*x_2 + 32*x_2^2 + 52*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 0 1; varGCD=4 no mod constant!  - 3 + 32*x_2^2 + 4*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 0 1; varGCD=4 no mod constant!  - 1 + 16*x_2 + 32*x_2^2 + 4*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 0 1; varGCD=4 no mod constant! 5 + 32*x_2 + 32*x_2^2 + 4*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 0 1; varGCD=4 no mod constant! 15 + 48*x_2 + 32*x_2^2 + 4*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 1 1; variables only? 8*x_2^2 + 5*y_2 + 8*y_2^2 - 5*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 1 1; varGCD=2 no mod constant! 1 + 8*x_2 + 16*x_2^2 + 10*y_2 + 16*y_2^2 - 10*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 1 1; no varGCD? 2 + 8*x_2 + 8*x_2^2 + 5*y_2 + 8*y_2^2 - 5*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 1 1; varGCD=2 no mod constant! 9 + 24*x_2 + 16*x_2^2 + 10*y_2 + 16*y_2^2 - 10*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 2 1; varGCD=4 no mod constant! 7 + 32*x_2^2 + 36*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 2 1; varGCD=4 no mod constant! 9 + 16*x_2 + 32*x_2^2 + 36*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 2 1; varGCD=4 no mod constant! 15 + 32*x_2 + 32*x_2^2 + 36*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 2 1; varGCD=4 no mod constant! 25 + 48*x_2 + 32*x_2^2 + 36*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 3 1; varGCD=2 no mod constant! 9 + 16*x_2^2 + 26*y_2 + 16*y_2^2 - 10*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 3 1; no varGCD? 5 + 4*x_2 + 8*x_2^2 + 13*y_2 + 8*y_2^2 - 5*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 3 1; varGCD=2 no mod constant! 13 + 16*x_2 + 16*x_2^2 + 26*y_2 + 16*y_2^2 - 10*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 3 1; no varGCD? 9 + 12*x_2 + 8*x_2^2 + 13*y_2 + 8*y_2^2 - 5*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 0 2; varGCD=2 no mod constant!  - 5 + 16*x_2^2 + 2*y_2 + 16*y_2^2 - 18*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 0 2; no varGCD?  - 2 + 4*x_2 + 8*x_2^2 + y_2 + 8*y_2^2 - 9*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 0 2; varGCD=2 no mod constant!  - 1 + 16*x_2 + 16*x_2^2 + 2*y_2 + 16*y_2^2 - 18*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 0 2; no varGCD? 2 + 12*x_2 + 8*x_2^2 + y_2 + 8*y_2^2 - 9*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 1 2; varGCD=4 no mod constant!  - 7 + 32*x_2^2 + 20*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 1 2; varGCD=4 no mod constant!  - 5 + 16*x_2 + 32*x_2^2 + 20*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 1 2; varGCD=4 no mod constant! 1 + 32*x_2 + 32*x_2^2 + 20*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 1 2; varGCD=4 no mod constant! 11 + 48*x_2 + 32*x_2^2 + 20*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 2 2; variables only? 8*x_2^2 + 9*y_2 + 8*y_2^2 - 9*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 2 2; varGCD=2 no mod constant! 1 + 8*x_2 + 16*x_2^2 + 18*y_2 + 16*y_2^2 - 18*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 2 2; no varGCD? 2 + 8*x_2 + 8*x_2^2 + 9*y_2 + 8*y_2^2 - 9*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 2 2; varGCD=2 no mod constant! 9 + 24*x_2 + 16*x_2^2 + 18*y_2 + 16*y_2^2 - 18*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 3 2; varGCD=4 no mod constant! 11 + 32*x_2^2 + 52*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 3 2; varGCD=4 no mod constant! 13 + 16*x_2 + 32*x_2^2 + 52*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 3 2; varGCD=4 no mod constant! 19 + 32*x_2 + 32*x_2^2 + 52*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 3 2; varGCD=4 no mod constant! 29 + 48*x_2 + 32*x_2^2 + 52*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 0 3; varGCD=4 no mod constant!  - 21 + 32*x_2^2 + 4*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 0 3; varGCD=4 no mod constant!  - 19 + 16*x_2 + 32*x_2^2 + 4*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 0 3; varGCD=4 no mod constant!  - 13 + 32*x_2 + 32*x_2^2 + 4*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 0 3; varGCD=4 no mod constant!  - 3 + 48*x_2 + 32*x_2^2 + 4*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 1 3; varGCD=2 no mod constant!  - 9 + 16*x_2^2 + 10*y_2 + 16*y_2^2 - 26*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 1 3; no varGCD?  - 4 + 4*x_2 + 8*x_2^2 + 5*y_2 + 8*y_2^2 - 13*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 1 3; varGCD=2 no mod constant!  - 5 + 16*x_2 + 16*x_2^2 + 10*y_2 + 16*y_2^2 - 26*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 1 3; variables only? 12*x_2 + 8*x_2^2 + 5*y_2 + 8*y_2^2 - 13*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 2 3; varGCD=4 no mod constant!  - 11 + 32*x_2^2 + 36*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 2 3; varGCD=4 no mod constant!  - 9 + 16*x_2 + 32*x_2^2 + 36*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 2 3; varGCD=4 no mod constant!  - 3 + 32*x_2 + 32*x_2^2 + 36*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 2 3; varGCD=4 no mod constant! 7 + 48*x_2 + 32*x_2^2 + 36*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 3 3; variables only? 8*x_2^2 + 13*y_2 + 8*y_2^2 - 13*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 3 3; varGCD=2 no mod constant! 1 + 8*x_2 + 16*x_2^2 + 26*y_2 + 16*y_2^2 - 26*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 3 3; no varGCD? 2 + 8*x_2 + 8*x_2^2 + 13*y_2 + 8*y_2^2 - 13*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 3 3; varGCD=2 no mod constant! 9 + 24*x_2 + 16*x_2^2 + 26*y_2 + 16*y_2^2 - 26*z_2 - 16*z_2^2

4;x;y;z; 1 1 1; varGCD=8 no mod constant! 1 + 8*x_1 + 16*x_1^2 + 8*y_1 + 16*y_1^2 - 8*z_1 - 16*z_1^2
4;x;y;z; 2 1 1; varGCD=2 no mod constant! 1 + 4*x_1 + 4*x_1^2 + 2*y_1 + 4*y_1^2 - 2*z_1 - 4*z_1^2
4;x;y;z; 3 1 1; varGCD=8 no mod constant! 9 + 24*x_1 + 16*x_1^2 + 8*y_1 + 16*y_1^2 - 8*z_1 - 16*z_1^2
4;x;y;z; 0 2 1; varGCD=8 no mod constant! 3 + 16*x_1^2 + 16*y_1 + 16*y_1^2 - 8*z_1 - 16*z_1^2
4;x;y;z; 1 2 1; varGCD=2 no mod constant! 1 + 2*x_1 + 4*x_1^2 + 4*y_1 + 4*y_1^2 - 2*z_1 - 4*z_1^2
4;x;y;z; 2 2 1; varGCD=8 no mod constant! 7 + 16*x_1 + 16*x_1^2 + 16*y_1 + 16*y_1^2 - 8*z_1 - 16*z_1^2
4;x;y;z; 3 2 1; varGCD=2 no mod constant! 3 + 6*x_1 + 4*x_1^2 + 4*y_1 + 4*y_1^2 - 2*z_1 - 4*z_1^2
4;x;y;z; 0 3 1; no varGCD? 1 + 2*x_1^2 + 3*y_1 + 2*y_1^2 - z_1 - 2*z_1^2
  2;x_1;y_1;z_1; 0 0 0; varGCD=2 no mod constant! 1 + 8*x_2^2 + 6*y_2 + 8*y_2^2 - 2*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 1 0 0; varGCD=2 no mod constant! 3 + 8*x_2 + 8*x_2^2 + 6*y_2 + 8*y_2^2 - 2*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 0 1 0; no varGCD? 3 + 4*x_2^2 + 7*y_2 + 4*y_2^2 - z_2 - 4*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 1 0; no varGCD? 4 + 4*x_2 + 4*x_2^2 + 7*y_2 + 4*y_2^2 - z_2 - 4*z_2^2 overflow!
  2;x_1;y_1;z_1; 0 0 1; no varGCD?  - 1 + 4*x_2^2 + 3*y_2 + 4*y_2^2 - 5*z_2 - 4*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 0 1; variables only? 4*x_2 + 4*x_2^2 + 3*y_2 + 4*y_2^2 - 5*z_2 - 4*z_2^2 overflow!
  2;x_1;y_1;z_1; 0 1 1; varGCD=2 no mod constant! 3 + 8*x_2^2 + 14*y_2 + 8*y_2^2 - 10*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 1 1 1; varGCD=2 no mod constant! 5 + 8*x_2 + 8*x_2^2 + 14*y_2 + 8*y_2^2 - 10*z_2 - 8*z_2^2

  3;x_1;y_1;z_1; 0 0 0; varGCD=3 no mod constant! 1 + 18*x_2^2 + 9*y_2 + 18*y_2^2 - 3*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 0 0; no varGCD? 1 + 4*x_2 + 6*x_2^2 + 3*y_2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 0 0; no varGCD? 3 + 8*x_2 + 6*x_2^2 + 3*y_2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 1 0; no varGCD? 2 + 6*x_2^2 + 7*y_2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 1 0; varGCD=3 no mod constant! 8 + 12*x_2 + 18*x_2^2 + 21*y_2 + 18*y_2^2 - 3*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 1 0; varGCD=3 no mod constant! 14 + 24*x_2 + 18*x_2^2 + 21*y_2 + 18*y_2^2 - 3*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 2 0; no varGCD? 5 + 6*x_2^2 + 11*y_2 + 6*y_2^2 - z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 2 0; varGCD=3 no mod constant! 17 + 12*x_2 + 18*x_2^2 + 33*y_2 + 18*y_2^2 - 3*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 2 0; varGCD=3 no mod constant! 23 + 24*x_2 + 18*x_2^2 + 33*y_2 + 18*y_2^2 - 3*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 0 1; varGCD=3 no mod constant!  - 2 + 18*x_2^2 + 9*y_2 + 18*y_2^2 - 15*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 0 1; variables only? 4*x_2 + 6*x_2^2 + 3*y_2 + 6*y_2^2 - 5*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 0 1; no varGCD? 2 + 8*x_2 + 6*x_2^2 + 3*y_2 + 6*y_2^2 - 5*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 1 1; no varGCD? 1 + 6*x_2^2 + 7*y_2 + 6*y_2^2 - 5*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 1 1; varGCD=3 no mod constant! 5 + 12*x_2 + 18*x_2^2 + 21*y_2 + 18*y_2^2 - 15*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 1 1; varGCD=3 no mod constant! 11 + 24*x_2 + 18*x_2^2 + 21*y_2 + 18*y_2^2 - 15*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 2 1; no varGCD? 4 + 6*x_2^2 + 11*y_2 + 6*y_2^2 - 5*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 2 1; varGCD=3 no mod constant! 14 + 12*x_2 + 18*x_2^2 + 33*y_2 + 18*y_2^2 - 15*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 2 1; varGCD=3 no mod constant! 20 + 24*x_2 + 18*x_2^2 + 33*y_2 + 18*y_2^2 - 15*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 0 2; no varGCD?  - 1 + 2*x_2^2 + y_2 + 2*y_2^2 - 3*z_2 - 2*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 0 2; varGCD=3 no mod constant!  - 7 + 12*x_2 + 18*x_2^2 + 9*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 0 2; varGCD=3 no mod constant!  - 1 + 24*x_2 + 18*x_2^2 + 9*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 1 2; varGCD=3 no mod constant!  - 4 + 18*x_2^2 + 21*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 1 2; varGCD=3 no mod constant!  - 2 + 12*x_2 + 18*x_2^2 + 21*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 1 2; varGCD=3 no mod constant! 4 + 24*x_2 + 18*x_2^2 + 21*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 2 2; varGCD=3 no mod constant! 5 + 18*x_2^2 + 33*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 2 2; varGCD=3 no mod constant! 7 + 12*x_2 + 18*x_2^2 + 33*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 2 2; varGCD=3 no mod constant! 13 + 24*x_2 + 18*x_2^2 + 33*y_2 + 18*y_2^2 - 27*z_2 - 18*z_2^2

  4;x_1;y_1;z_1; 0 0 0; varGCD=4 no mod constant! 1 + 32*x_2^2 + 12*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 0 0; varGCD=4 no mod constant! 3 + 16*x_2 + 32*x_2^2 + 12*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 0 0; varGCD=4 no mod constant! 9 + 32*x_2 + 32*x_2^2 + 12*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 0 0; varGCD=4 no mod constant! 19 + 48*x_2 + 32*x_2^2 + 12*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 1 0; varGCD=2 no mod constant! 3 + 16*x_2^2 + 14*y_2 + 16*y_2^2 - 2*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 1 0; no varGCD? 2 + 4*x_2 + 8*x_2^2 + 7*y_2 + 8*y_2^2 - z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 1 0; varGCD=2 no mod constant! 7 + 16*x_2 + 16*x_2^2 + 14*y_2 + 16*y_2^2 - 2*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 1 0; no varGCD? 6 + 12*x_2 + 8*x_2^2 + 7*y_2 + 8*y_2^2 - z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 2 0; varGCD=4 no mod constant! 15 + 32*x_2^2 + 44*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 2 0; varGCD=4 no mod constant! 17 + 16*x_2 + 32*x_2^2 + 44*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 2 0; varGCD=4 no mod constant! 23 + 32*x_2 + 32*x_2^2 + 44*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 2 0; varGCD=4 no mod constant! 33 + 48*x_2 + 32*x_2^2 + 44*y_2 + 32*y_2^2 - 4*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 3 0; no varGCD? 7 + 8*x_2^2 + 15*y_2 + 8*y_2^2 - z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 3 0; varGCD=2 no mod constant! 15 + 8*x_2 + 16*x_2^2 + 30*y_2 + 16*y_2^2 - 2*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 3 0; no varGCD? 9 + 8*x_2 + 8*x_2^2 + 15*y_2 + 8*y_2^2 - z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 3 0; varGCD=2 no mod constant! 23 + 24*x_2 + 16*x_2^2 + 30*y_2 + 16*y_2^2 - 2*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 0 1; varGCD=2 no mod constant!  - 1 + 16*x_2^2 + 6*y_2 + 16*y_2^2 - 10*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 0 1; variables only? 4*x_2 + 8*x_2^2 + 3*y_2 + 8*y_2^2 - 5*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 0 1; varGCD=2 no mod constant! 3 + 16*x_2 + 16*x_2^2 + 6*y_2 + 16*y_2^2 - 10*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 0 1; no varGCD? 4 + 12*x_2 + 8*x_2^2 + 3*y_2 + 8*y_2^2 - 5*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 1 1; varGCD=4 no mod constant! 3 + 32*x_2^2 + 28*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 1 1; varGCD=4 no mod constant! 5 + 16*x_2 + 32*x_2^2 + 28*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 1 1; varGCD=4 no mod constant! 11 + 32*x_2 + 32*x_2^2 + 28*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 1 1; varGCD=4 no mod constant! 21 + 48*x_2 + 32*x_2^2 + 28*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 2 1; no varGCD? 3 + 8*x_2^2 + 11*y_2 + 8*y_2^2 - 5*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 2 1; varGCD=2 no mod constant! 7 + 8*x_2 + 16*x_2^2 + 22*y_2 + 16*y_2^2 - 10*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 2 1; no varGCD? 5 + 8*x_2 + 8*x_2^2 + 11*y_2 + 8*y_2^2 - 5*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 2 1; varGCD=2 no mod constant! 15 + 24*x_2 + 16*x_2^2 + 22*y_2 + 16*y_2^2 - 10*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 3 1; varGCD=4 no mod constant! 25 + 32*x_2^2 + 60*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 3 1; varGCD=4 no mod constant! 27 + 16*x_2 + 32*x_2^2 + 60*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 3 1; varGCD=4 no mod constant! 33 + 32*x_2 + 32*x_2^2 + 60*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 3 1; varGCD=4 no mod constant! 43 + 48*x_2 + 32*x_2^2 + 60*y_2 + 32*y_2^2 - 20*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 0 2; varGCD=4 no mod constant!  - 9 + 32*x_2^2 + 12*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 0 2; varGCD=4 no mod constant!  - 7 + 16*x_2 + 32*x_2^2 + 12*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 0 2; varGCD=4 no mod constant!  - 1 + 32*x_2 + 32*x_2^2 + 12*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 0 2; varGCD=4 no mod constant! 9 + 48*x_2 + 32*x_2^2 + 12*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 1 2; no varGCD?  - 1 + 8*x_2^2 + 7*y_2 + 8*y_2^2 - 9*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 1 2; varGCD=2 no mod constant!  - 1 + 8*x_2 + 16*x_2^2 + 14*y_2 + 16*y_2^2 - 18*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 1 2; no varGCD? 1 + 8*x_2 + 8*x_2^2 + 7*y_2 + 8*y_2^2 - 9*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 1 2; varGCD=2 no mod constant! 7 + 24*x_2 + 16*x_2^2 + 14*y_2 + 16*y_2^2 - 18*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 2 2; varGCD=4 no mod constant! 5 + 32*x_2^2 + 44*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 2 2; varGCD=4 no mod constant! 7 + 16*x_2 + 32*x_2^2 + 44*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 2 2; varGCD=4 no mod constant! 13 + 32*x_2 + 32*x_2^2 + 44*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 2 2; varGCD=4 no mod constant! 23 + 48*x_2 + 32*x_2^2 + 44*y_2 + 32*y_2^2 - 36*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 3 2; varGCD=2 no mod constant! 9 + 16*x_2^2 + 30*y_2 + 16*y_2^2 - 18*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 3 2; no varGCD? 5 + 4*x_2 + 8*x_2^2 + 15*y_2 + 8*y_2^2 - 9*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 3 2; varGCD=2 no mod constant! 13 + 16*x_2 + 16*x_2^2 + 30*y_2 + 16*y_2^2 - 18*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 3 2; no varGCD? 9 + 12*x_2 + 8*x_2^2 + 15*y_2 + 8*y_2^2 - 9*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 0 3; no varGCD?  - 5 + 8*x_2^2 + 3*y_2 + 8*y_2^2 - 13*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 0 3; varGCD=2 no mod constant!  - 9 + 8*x_2 + 16*x_2^2 + 6*y_2 + 16*y_2^2 - 26*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 0 3; no varGCD?  - 3 + 8*x_2 + 8*x_2^2 + 3*y_2 + 8*y_2^2 - 13*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 0 3; varGCD=2 no mod constant!  - 1 + 24*x_2 + 16*x_2^2 + 6*y_2 + 16*y_2^2 - 26*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 1 3; varGCD=4 no mod constant!  - 15 + 32*x_2^2 + 28*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 1 3; varGCD=4 no mod constant!  - 13 + 16*x_2 + 32*x_2^2 + 28*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 1 3; varGCD=4 no mod constant!  - 7 + 32*x_2 + 32*x_2^2 + 28*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 1 3; varGCD=4 no mod constant! 3 + 48*x_2 + 32*x_2^2 + 28*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 2 3; varGCD=2 no mod constant!  - 3 + 16*x_2^2 + 22*y_2 + 16*y_2^2 - 26*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 2 3; no varGCD?  - 1 + 4*x_2 + 8*x_2^2 + 11*y_2 + 8*y_2^2 - 13*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 2 3; varGCD=2 no mod constant! 1 + 16*x_2 + 16*x_2^2 + 22*y_2 + 16*y_2^2 - 26*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 2 3; no varGCD? 3 + 12*x_2 + 8*x_2^2 + 11*y_2 + 8*y_2^2 - 13*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 3 3; varGCD=4 no mod constant! 7 + 32*x_2^2 + 60*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 3 3; varGCD=4 no mod constant! 9 + 16*x_2 + 32*x_2^2 + 60*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 3 3; varGCD=4 no mod constant! 15 + 32*x_2 + 32*x_2^2 + 60*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 3 3; varGCD=4 no mod constant! 25 + 48*x_2 + 32*x_2^2 + 60*y_2 + 32*y_2^2 - 52*z_2 - 32*z_2^2

4;x;y;z; 1 3 1; varGCD=8 no mod constant! 9 + 8*x_1 + 16*x_1^2 + 24*y_1 + 16*y_1^2 - 8*z_1 - 16*z_1^2
4;x;y;z; 2 3 1; varGCD=2 no mod constant! 3 + 4*x_1 + 4*x_1^2 + 6*y_1 + 4*y_1^2 - 2*z_1 - 4*z_1^2
4;x;y;z; 3 3 1; varGCD=8 no mod constant! 17 + 24*x_1 + 16*x_1^2 + 24*y_1 + 16*y_1^2 - 8*z_1 - 16*z_1^2
4;x;y;z; 0 0 2; varGCD=4 no mod constant!  - 1 + 4*x_1^2 + 4*y_1^2 - 4*z_1 - 4*z_1^2
4;x;y;z; 1 0 2; varGCD=8 no mod constant!  - 3 + 8*x_1 + 16*x_1^2 + 16*y_1^2 - 16*z_1 - 16*z_1^2
4;x;y;z; 2 0 2; variables only? x_1 + x_1^2 + y_1^2 - z_1 - z_1^2
  2;x_1;y_1;z_1; 0 0 0; var. set not primitive! x_2 + 2*x_2^2 + 2*y_2^2 - z_2 - 2*z_2^2
  2;x_1;y_1;z_1; 1 0 0; no varGCD? 1 + 3*x_2 + 2*x_2^2 + 2*y_2^2 - z_2 - 2*z_2^2 overflow!
  2;x_1;y_1;z_1; 0 1 0; varGCD=2 no mod constant! 1 + 2*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 2*z_2 - 4*z_2^2
  2;x_1;y_1;z_1; 1 1 0; varGCD=2 no mod constant! 3 + 6*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 2*z_2 - 4*z_2^2
  2;x_1;y_1;z_1; 0 0 1; no varGCD?  - 1 + x_2 + 2*x_2^2 + 2*y_2^2 - 3*z_2 - 2*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 0 1; variables only? 3*x_2 + 2*x_2^2 + 2*y_2^2 - 3*z_2 - 2*z_2^2 overflow!
  2;x_1;y_1;z_1; 0 1 1; varGCD=2 no mod constant!  - 1 + 2*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 6*z_2 - 4*z_2^2
  2;x_1;y_1;z_1; 1 1 1; varGCD=2 no mod constant! 1 + 6*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 6*z_2 - 4*z_2^2

  3;x_1;y_1;z_1; 0 0 0; var. set not primitive! x_2 + 3*x_2^2 + 3*y_2^2 - z_2 - 3*z_2^2
  3;x_1;y_1;z_1; 1 0 0; varGCD=3 no mod constant! 2 + 9*x_2 + 9*x_2^2 + 9*y_2^2 - 3*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 2 0 0; no varGCD? 2 + 5*x_2 + 3*x_2^2 + 3*y_2^2 - z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 1 0; varGCD=3 no mod constant! 1 + 3*x_2 + 9*x_2^2 + 6*y_2 + 9*y_2^2 - 3*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 1 0; no varGCD? 1 + 3*x_2 + 3*x_2^2 + 2*y_2 + 3*y_2^2 - z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 1 0; varGCD=3 no mod constant! 7 + 15*x_2 + 9*x_2^2 + 6*y_2 + 9*y_2^2 - 3*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 0 2 0; varGCD=3 no mod constant! 4 + 3*x_2 + 9*x_2^2 + 12*y_2 + 9*y_2^2 - 3*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 2 0; no varGCD? 2 + 3*x_2 + 3*x_2^2 + 4*y_2 + 3*y_2^2 - z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 2 0; varGCD=3 no mod constant! 10 + 15*x_2 + 9*x_2^2 + 12*y_2 + 9*y_2^2 - 3*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 0 0 1; varGCD=3 no mod constant!  - 2 + 3*x_2 + 9*x_2^2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 0 1; variables only? INFINITE DESCENT: 2 -> 1 <---------- x_1 + x_1^2 + y_1^2 - z_1 - z_1^2 <equiv>  x_2 + x_2^2 + y_2^2 - z_2 - z_2^2
  3;x_1;y_1;z_1; 2 0 1; varGCD=3 no mod constant! 4 + 15*x_2 + 9*x_2^2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 0 1 1; varGCD=3 no mod constant!  - 1 + 3*x_2 + 9*x_2^2 + 6*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 1 1; varGCD=3 no mod constant! 1 + 9*x_2 + 9*x_2^2 + 6*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 2 1 1; varGCD=3 no mod constant! 5 + 15*x_2 + 9*x_2^2 + 6*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 0 2 1; varGCD=3 no mod constant! 2 + 3*x_2 + 9*x_2^2 + 12*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 2 1; varGCD=3 no mod constant! 4 + 9*x_2 + 9*x_2^2 + 12*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 2 2 1; varGCD=3 no mod constant! 8 + 15*x_2 + 9*x_2^2 + 12*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 0 0 2; no varGCD?  - 2 + x_2 + 3*x_2^2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 0 2; varGCD=3 no mod constant!  - 4 + 9*x_2 + 9*x_2^2 + 9*y_2^2 - 15*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 2 0 2; variables only? 5*x_2 + 3*x_2^2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 1 2; varGCD=3 no mod constant!  - 5 + 3*x_2 + 9*x_2^2 + 6*y_2 + 9*y_2^2 - 15*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 1 2; no varGCD?  - 1 + 3*x_2 + 3*x_2^2 + 2*y_2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 1 2; varGCD=3 no mod constant! 1 + 15*x_2 + 9*x_2^2 + 6*y_2 + 9*y_2^2 - 15*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 0 2 2; varGCD=3 no mod constant!  - 2 + 3*x_2 + 9*x_2^2 + 12*y_2 + 9*y_2^2 - 15*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 2 2; variables only? 3*x_2 + 3*x_2^2 + 4*y_2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 2 2; varGCD=3 no mod constant! 4 + 15*x_2 + 9*x_2^2 + 12*y_2 + 9*y_2^2 - 15*z_2 - 9*z_2^2

  4;x_1;y_1;z_1; 0 0 0; var. set not primitive! x_2 + 4*x_2^2 + 4*y_2^2 - z_2 - 4*z_2^2
  4;x_1;y_1;z_1; 1 0 0; varGCD=2 no mod constant! 1 + 6*x_2 + 8*x_2^2 + 8*y_2^2 - 2*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 2 0 0; varGCD=2 no mod constant! 3 + 10*x_2 + 8*x_2^2 + 8*y_2^2 - 2*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 3 0 0; no varGCD? 3 + 7*x_2 + 4*x_2^2 + 4*y_2^2 - z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 1 0; varGCD=4 no mod constant! 1 + 4*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 1 0; varGCD=4 no mod constant! 3 + 12*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 1 0; varGCD=4 no mod constant! 7 + 20*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 1 0; varGCD=4 no mod constant! 13 + 28*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 2 0; no varGCD? 1 + x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 2 0; varGCD=2 no mod constant! 3 + 6*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 2*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 2 2 0; varGCD=2 no mod constant! 5 + 10*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 2*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 3 2 0; no varGCD? 4 + 7*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 3 0; varGCD=4 no mod constant! 9 + 4*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 3 0; varGCD=4 no mod constant! 11 + 12*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 3 0; varGCD=4 no mod constant! 15 + 20*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 3 0; varGCD=4 no mod constant! 21 + 28*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 0 1; varGCD=2 no mod constant!  - 1 + 2*x_2 + 8*x_2^2 + 8*y_2^2 - 6*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 0 1; variables only? 3*x_2 + 4*x_2^2 + 4*y_2^2 - 3*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 0 1; no varGCD? 1 + 5*x_2 + 4*x_2^2 + 4*y_2^2 - 3*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 0 1; varGCD=2 no mod constant! 5 + 14*x_2 + 8*x_2^2 + 8*y_2^2 - 6*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 0 1 1; varGCD=4 no mod constant!  - 1 + 4*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 1 1; varGCD=4 no mod constant! 1 + 12*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 1 1; varGCD=4 no mod constant! 5 + 20*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 1 1; varGCD=4 no mod constant! 11 + 28*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 2 1; varGCD=2 no mod constant! 1 + 2*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 6*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 2 1; no varGCD? 1 + 3*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 3*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 2 1; no varGCD? 2 + 5*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 3*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 2 1; varGCD=2 no mod constant! 7 + 14*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 6*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 0 3 1; varGCD=4 no mod constant! 7 + 4*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 3 1; varGCD=4 no mod constant! 9 + 12*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 3 1; varGCD=4 no mod constant! 13 + 20*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 3 1; varGCD=4 no mod constant! 19 + 28*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 0 2; varGCD=2 no mod constant!  - 3 + 2*x_2 + 8*x_2^2 + 8*y_2^2 - 10*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 0 2; no varGCD?  - 1 + 3*x_2 + 4*x_2^2 + 4*y_2^2 - 5*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 0 2; variables only? 5*x_2 + 4*x_2^2 + 4*y_2^2 - 5*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 0 2; varGCD=2 no mod constant! 3 + 14*x_2 + 8*x_2^2 + 8*y_2^2 - 10*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 0 1 2; varGCD=4 no mod constant!  - 5 + 4*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 1 2; varGCD=4 no mod constant!  - 3 + 12*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 1 2; varGCD=4 no mod constant! 1 + 20*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 1 2; varGCD=4 no mod constant! 7 + 28*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 2 2; varGCD=2 no mod constant!  - 1 + 2*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 10*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 2 2; variables only? 3*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 5*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 2 2; no varGCD? 1 + 5*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 5*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 2 2; varGCD=2 no mod constant! 5 + 14*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 10*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 0 3 2; varGCD=4 no mod constant! 3 + 4*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 3 2; varGCD=4 no mod constant! 5 + 12*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 3 2; varGCD=4 no mod constant! 9 + 20*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 3 2; varGCD=4 no mod constant! 15 + 28*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 0 3; no varGCD?  - 3 + x_2 + 4*x_2^2 + 4*y_2^2 - 7*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 0 3; varGCD=2 no mod constant!  - 5 + 6*x_2 + 8*x_2^2 + 8*y_2^2 - 14*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 2 0 3; varGCD=2 no mod constant!  - 3 + 10*x_2 + 8*x_2^2 + 8*y_2^2 - 14*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 3 0 3; variables only? 7*x_2 + 4*x_2^2 + 4*y_2^2 - 7*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 1 3; varGCD=4 no mod constant!  - 11 + 4*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 1 3; varGCD=4 no mod constant!  - 9 + 12*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 1 3; varGCD=4 no mod constant!  - 5 + 20*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 1 3; varGCD=4 no mod constant! 1 + 28*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 2 3; no varGCD?  - 2 + x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 7*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 2 3; varGCD=2 no mod constant!  - 3 + 6*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 14*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 2 2 3; varGCD=2 no mod constant!  - 1 + 10*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 14*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 3 2 3; no varGCD? 1 + 7*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 7*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 3 3; varGCD=4 no mod constant!  - 3 + 4*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 3 3; varGCD=4 no mod constant!  - 1 + 12*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 3 3; varGCD=4 no mod constant! 3 + 20*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 3 3; varGCD=4 no mod constant! 9 + 28*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2

4;x;y;z; 3 0 2; varGCD=8 no mod constant! 5 + 24*x_1 + 16*x_1^2 + 16*y_1^2 - 16*z_1 - 16*z_1^2
4;x;y;z; 0 1 2; varGCD=8 no mod constant!  - 3 + 16*x_1^2 + 8*y_1 + 16*y_1^2 - 16*z_1 - 16*z_1^2
4;x;y;z; 1 1 2; varGCD=4 no mod constant!  - 1 + 4*x_1 + 8*x_1^2 + 4*y_1 + 8*y_1^2 - 8*z_1 - 8*z_1^2
4;x;y;z; 2 1 2; varGCD=8 no mod constant! 1 + 16*x_1 + 16*x_1^2 + 8*y_1 + 16*y_1^2 - 16*z_1 - 16*z_1^2
4;x;y;z; 3 1 2; varGCD=4 no mod constant! 3 + 12*x_1 + 8*x_1^2 + 4*y_1 + 8*y_1^2 - 8*z_1 - 8*z_1^2
4;x;y;z; 0 2 2; variables only? x_1^2 + y_1 + y_1^2 - z_1 - z_1^2
  2;x_1;y_1;z_1; 0 0 0; var. set not primitive! 2*x_2^2 + y_2 + 2*y_2^2 - z_2 - 2*z_2^2
  2;x_1;y_1;z_1; 1 0 0; varGCD=2 no mod constant! 1 + 4*x_2 + 4*x_2^2 + 2*y_2 + 4*y_2^2 - 2*z_2 - 4*z_2^2
  2;x_1;y_1;z_1; 0 1 0; no varGCD? 1 + 2*x_2^2 + 3*y_2 + 2*y_2^2 - z_2 - 2*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 1 0; varGCD=2 no mod constant! 3 + 4*x_2 + 4*x_2^2 + 6*y_2 + 4*y_2^2 - 2*z_2 - 4*z_2^2
  2;x_1;y_1;z_1; 0 0 1; no varGCD?  - 1 + 2*x_2^2 + y_2 + 2*y_2^2 - 3*z_2 - 2*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 0 1; varGCD=2 no mod constant!  - 1 + 4*x_2 + 4*x_2^2 + 2*y_2 + 4*y_2^2 - 6*z_2 - 4*z_2^2
  2;x_1;y_1;z_1; 0 1 1; variables only? 2*x_2^2 + 3*y_2 + 2*y_2^2 - 3*z_2 - 2*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 1 1; varGCD=2 no mod constant! 1 + 4*x_2 + 4*x_2^2 + 6*y_2 + 4*y_2^2 - 6*z_2 - 4*z_2^2

  3;x_1;y_1;z_1; 0 0 0; var. set not primitive! 3*x_2^2 + y_2 + 3*y_2^2 - z_2 - 3*z_2^2
  3;x_1;y_1;z_1; 1 0 0; varGCD=3 no mod constant! 1 + 6*x_2 + 9*x_2^2 + 3*y_2 + 9*y_2^2 - 3*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 2 0 0; varGCD=3 no mod constant! 4 + 12*x_2 + 9*x_2^2 + 3*y_2 + 9*y_2^2 - 3*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 0 1 0; varGCD=3 no mod constant! 2 + 9*x_2^2 + 9*y_2 + 9*y_2^2 - 3*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 1 0; no varGCD? 1 + 2*x_2 + 3*x_2^2 + 3*y_2 + 3*y_2^2 - z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 1 0; no varGCD? 2 + 4*x_2 + 3*x_2^2 + 3*y_2 + 3*y_2^2 - z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 2 0; no varGCD? 2 + 3*x_2^2 + 5*y_2 + 3*y_2^2 - z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 2 0; varGCD=3 no mod constant! 7 + 6*x_2 + 9*x_2^2 + 15*y_2 + 9*y_2^2 - 3*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 2 2 0; varGCD=3 no mod constant! 10 + 12*x_2 + 9*x_2^2 + 15*y_2 + 9*y_2^2 - 3*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 0 0 1; varGCD=3 no mod constant!  - 2 + 9*x_2^2 + 3*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 0 1; varGCD=3 no mod constant!  - 1 + 6*x_2 + 9*x_2^2 + 3*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 2 0 1; varGCD=3 no mod constant! 2 + 12*x_2 + 9*x_2^2 + 3*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 0 1 1; variables only? INFINITE DESCENT: 2 -> 1 <---------- x_1^2 + y_1 + y_1^2 - z_1 - z_1^2 <equiv>  x_2^2 + y_2 + y_2^2 - z_2 - z_2^2
  3;x_1;y_1;z_1; 1 1 1; varGCD=3 no mod constant! 1 + 6*x_2 + 9*x_2^2 + 9*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 2 1 1; varGCD=3 no mod constant! 4 + 12*x_2 + 9*x_2^2 + 9*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 0 2 1; varGCD=3 no mod constant! 4 + 9*x_2^2 + 15*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 2 1; varGCD=3 no mod constant! 5 + 6*x_2 + 9*x_2^2 + 15*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 2 2 1; varGCD=3 no mod constant! 8 + 12*x_2 + 9*x_2^2 + 15*y_2 + 9*y_2^2 - 9*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 0 0 2; no varGCD?  - 2 + 3*x_2^2 + y_2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 0 2; varGCD=3 no mod constant!  - 5 + 6*x_2 + 9*x_2^2 + 3*y_2 + 9*y_2^2 - 15*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 2 0 2; varGCD=3 no mod constant!  - 2 + 12*x_2 + 9*x_2^2 + 3*y_2 + 9*y_2^2 - 15*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 0 1 2; varGCD=3 no mod constant!  - 4 + 9*x_2^2 + 9*y_2 + 9*y_2^2 - 15*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 1 1 2; no varGCD?  - 1 + 2*x_2 + 3*x_2^2 + 3*y_2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 1 2; variables only? 4*x_2 + 3*x_2^2 + 3*y_2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 2 2; variables only? 3*x_2^2 + 5*y_2 + 3*y_2^2 - 5*z_2 - 3*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 2 2; varGCD=3 no mod constant! 1 + 6*x_2 + 9*x_2^2 + 15*y_2 + 9*y_2^2 - 15*z_2 - 9*z_2^2
  3;x_1;y_1;z_1; 2 2 2; varGCD=3 no mod constant! 4 + 12*x_2 + 9*x_2^2 + 15*y_2 + 9*y_2^2 - 15*z_2 - 9*z_2^2

  4;x_1;y_1;z_1; 0 0 0; var. set not primitive! 4*x_2^2 + y_2 + 4*y_2^2 - z_2 - 4*z_2^2
  4;x_1;y_1;z_1; 1 0 0; varGCD=4 no mod constant! 1 + 8*x_2 + 16*x_2^2 + 4*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 0 0; no varGCD? 1 + 4*x_2 + 4*x_2^2 + y_2 + 4*y_2^2 - z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 0 0; varGCD=4 no mod constant! 9 + 24*x_2 + 16*x_2^2 + 4*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 1 0; varGCD=2 no mod constant! 1 + 8*x_2^2 + 6*y_2 + 8*y_2^2 - 2*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 1 0; varGCD=4 no mod constant! 3 + 8*x_2 + 16*x_2^2 + 12*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 1 0; varGCD=2 no mod constant! 3 + 8*x_2 + 8*x_2^2 + 6*y_2 + 8*y_2^2 - 2*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 3 1 0; varGCD=4 no mod constant! 11 + 24*x_2 + 16*x_2^2 + 12*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 2 0; varGCD=2 no mod constant! 3 + 8*x_2^2 + 10*y_2 + 8*y_2^2 - 2*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 2 0; varGCD=4 no mod constant! 7 + 8*x_2 + 16*x_2^2 + 20*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 2 0; varGCD=2 no mod constant! 5 + 8*x_2 + 8*x_2^2 + 10*y_2 + 8*y_2^2 - 2*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 3 2 0; varGCD=4 no mod constant! 15 + 24*x_2 + 16*x_2^2 + 20*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 3 0; no varGCD? 3 + 4*x_2^2 + 7*y_2 + 4*y_2^2 - z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 3 0; varGCD=4 no mod constant! 13 + 8*x_2 + 16*x_2^2 + 28*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 3 0; no varGCD? 4 + 4*x_2 + 4*x_2^2 + 7*y_2 + 4*y_2^2 - z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 3 0; varGCD=4 no mod constant! 21 + 24*x_2 + 16*x_2^2 + 28*y_2 + 16*y_2^2 - 4*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 0 1; varGCD=2 no mod constant!  - 1 + 8*x_2^2 + 2*y_2 + 8*y_2^2 - 6*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 0 1; varGCD=4 no mod constant!  - 1 + 8*x_2 + 16*x_2^2 + 4*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 0 1; varGCD=2 no mod constant! 1 + 8*x_2 + 8*x_2^2 + 2*y_2 + 8*y_2^2 - 6*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 3 0 1; varGCD=4 no mod constant! 7 + 24*x_2 + 16*x_2^2 + 4*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 1 1; variables only? 4*x_2^2 + 3*y_2 + 4*y_2^2 - 3*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 1 1; varGCD=4 no mod constant! 1 + 8*x_2 + 16*x_2^2 + 12*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 1 1; no varGCD? 1 + 4*x_2 + 4*x_2^2 + 3*y_2 + 4*y_2^2 - 3*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 1 1; varGCD=4 no mod constant! 9 + 24*x_2 + 16*x_2^2 + 12*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 2 1; no varGCD? 1 + 4*x_2^2 + 5*y_2 + 4*y_2^2 - 3*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 2 1; varGCD=4 no mod constant! 5 + 8*x_2 + 16*x_2^2 + 20*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 2 1; no varGCD? 2 + 4*x_2 + 4*x_2^2 + 5*y_2 + 4*y_2^2 - 3*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 2 1; varGCD=4 no mod constant! 13 + 24*x_2 + 16*x_2^2 + 20*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 3 1; varGCD=2 no mod constant! 5 + 8*x_2^2 + 14*y_2 + 8*y_2^2 - 6*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 3 1; varGCD=4 no mod constant! 11 + 8*x_2 + 16*x_2^2 + 28*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 3 1; varGCD=2 no mod constant! 7 + 8*x_2 + 8*x_2^2 + 14*y_2 + 8*y_2^2 - 6*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 3 3 1; varGCD=4 no mod constant! 19 + 24*x_2 + 16*x_2^2 + 28*y_2 + 16*y_2^2 - 12*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 0 2; varGCD=2 no mod constant!  - 3 + 8*x_2^2 + 2*y_2 + 8*y_2^2 - 10*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 0 2; varGCD=4 no mod constant!  - 5 + 8*x_2 + 16*x_2^2 + 4*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 0 2; varGCD=2 no mod constant!  - 1 + 8*x_2 + 8*x_2^2 + 2*y_2 + 8*y_2^2 - 10*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 3 0 2; varGCD=4 no mod constant! 3 + 24*x_2 + 16*x_2^2 + 4*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 1 2; no varGCD?  - 1 + 4*x_2^2 + 3*y_2 + 4*y_2^2 - 5*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 1 2; varGCD=4 no mod constant!  - 3 + 8*x_2 + 16*x_2^2 + 12*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 1 2; variables only? 4*x_2 + 4*x_2^2 + 3*y_2 + 4*y_2^2 - 5*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 1 2; varGCD=4 no mod constant! 5 + 24*x_2 + 16*x_2^2 + 12*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 2 2; variables only? 4*x_2^2 + 5*y_2 + 4*y_2^2 - 5*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 2 2; varGCD=4 no mod constant! 1 + 8*x_2 + 16*x_2^2 + 20*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 2 2; no varGCD? 1 + 4*x_2 + 4*x_2^2 + 5*y_2 + 4*y_2^2 - 5*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 2 2; varGCD=4 no mod constant! 9 + 24*x_2 + 16*x_2^2 + 20*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 3 2; varGCD=2 no mod constant! 3 + 8*x_2^2 + 14*y_2 + 8*y_2^2 - 10*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 3 2; varGCD=4 no mod constant! 7 + 8*x_2 + 16*x_2^2 + 28*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 3 2; varGCD=2 no mod constant! 5 + 8*x_2 + 8*x_2^2 + 14*y_2 + 8*y_2^2 - 10*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 3 3 2; varGCD=4 no mod constant! 15 + 24*x_2 + 16*x_2^2 + 28*y_2 + 16*y_2^2 - 20*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 0 3; no varGCD?  - 3 + 4*x_2^2 + y_2 + 4*y_2^2 - 7*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 0 3; varGCD=4 no mod constant!  - 11 + 8*x_2 + 16*x_2^2 + 4*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 0 3; no varGCD?  - 2 + 4*x_2 + 4*x_2^2 + y_2 + 4*y_2^2 - 7*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 0 3; varGCD=4 no mod constant!  - 3 + 24*x_2 + 16*x_2^2 + 4*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 1 3; varGCD=2 no mod constant!  - 5 + 8*x_2^2 + 6*y_2 + 8*y_2^2 - 14*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 1 3; varGCD=4 no mod constant!  - 9 + 8*x_2 + 16*x_2^2 + 12*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 1 3; varGCD=2 no mod constant!  - 3 + 8*x_2 + 8*x_2^2 + 6*y_2 + 8*y_2^2 - 14*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 3 1 3; varGCD=4 no mod constant!  - 1 + 24*x_2 + 16*x_2^2 + 12*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 2 3; varGCD=2 no mod constant!  - 3 + 8*x_2^2 + 10*y_2 + 8*y_2^2 - 14*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 2 3; varGCD=4 no mod constant!  - 5 + 8*x_2 + 16*x_2^2 + 20*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 2 3; varGCD=2 no mod constant!  - 1 + 8*x_2 + 8*x_2^2 + 10*y_2 + 8*y_2^2 - 14*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 3 2 3; varGCD=4 no mod constant! 3 + 24*x_2 + 16*x_2^2 + 20*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 3 3; variables only? 4*x_2^2 + 7*y_2 + 4*y_2^2 - 7*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 3 3; varGCD=4 no mod constant! 1 + 8*x_2 + 16*x_2^2 + 28*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 3 3; no varGCD? 1 + 4*x_2 + 4*x_2^2 + 7*y_2 + 4*y_2^2 - 7*z_2 - 4*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 3 3; varGCD=4 no mod constant! 9 + 24*x_2 + 16*x_2^2 + 28*y_2 + 16*y_2^2 - 28*z_2 - 16*z_2^2

4;x;y;z; 1 2 2; varGCD=8 no mod constant! 1 + 8*x_1 + 16*x_1^2 + 16*y_1 + 16*y_1^2 - 16*z_1 - 16*z_1^2
4;x;y;z; 2 2 2; varGCD=4 no mod constant! 1 + 4*x_1 + 4*x_1^2 + 4*y_1 + 4*y_1^2 - 4*z_1 - 4*z_1^2
4;x;y;z; 3 2 2; varGCD=8 no mod constant! 9 + 24*x_1 + 16*x_1^2 + 16*y_1 + 16*y_1^2 - 16*z_1 - 16*z_1^2
4;x;y;z; 0 3 2; varGCD=8 no mod constant! 5 + 16*x_1^2 + 24*y_1 + 16*y_1^2 - 16*z_1 - 16*z_1^2
4;x;y;z; 1 3 2; varGCD=4 no mod constant! 3 + 4*x_1 + 8*x_1^2 + 12*y_1 + 8*y_1^2 - 8*z_1 - 8*z_1^2
4;x;y;z; 2 3 2; varGCD=8 no mod constant! 9 + 16*x_1 + 16*x_1^2 + 24*y_1 + 16*y_1^2 - 16*z_1 - 16*z_1^2
4;x;y;z; 3 3 2; varGCD=4 no mod constant! 7 + 12*x_1 + 8*x_1^2 + 12*y_1 + 8*y_1^2 - 8*z_1 - 8*z_1^2
4;x;y;z; 0 0 3; varGCD=8 no mod constant!  - 9 + 16*x_1^2 + 16*y_1^2 - 24*z_1 - 16*z_1^2
4;x;y;z; 1 0 3; no varGCD?  - 1 + x_1 + 2*x_1^2 + 2*y_1^2 - 3*z_1 - 2*z_1^2
  2;x_1;y_1;z_1; 0 0 0; varGCD=2 no mod constant!  - 1 + 2*x_2 + 8*x_2^2 + 8*y_2^2 - 6*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 1 0 0; no varGCD? 1 + 5*x_2 + 4*x_2^2 + 4*y_2^2 - 3*z_2 - 4*z_2^2 overflow!
  2;x_1;y_1;z_1; 0 1 0; varGCD=2 no mod constant! 1 + 2*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 6*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 1 1 0; no varGCD? 2 + 5*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 3*z_2 - 4*z_2^2 overflow!
  2;x_1;y_1;z_1; 0 0 1; no varGCD?  - 3 + x_2 + 4*x_2^2 + 4*y_2^2 - 7*z_2 - 4*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 0 1; varGCD=2 no mod constant!  - 3 + 10*x_2 + 8*x_2^2 + 8*y_2^2 - 14*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 0 1 1; no varGCD?  - 2 + x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 7*z_2 - 4*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 1 1; varGCD=2 no mod constant!  - 1 + 10*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 14*z_2 - 8*z_2^2

  3;x_1;y_1;z_1; 0 0 0; varGCD=3 no mod constant!  - 1 + 3*x_2 + 18*x_2^2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 0 0; varGCD=3 no mod constant! 2 + 15*x_2 + 18*x_2^2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 0 0; no varGCD? 1 + 3*x_2 + 2*x_2^2 + 2*y_2^2 - z_2 - 2*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 1 0; varGCD=3 no mod constant! 1 + 3*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 1 0; varGCD=3 no mod constant! 4 + 15*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 1 0; varGCD=3 no mod constant! 11 + 27*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 2 0; varGCD=3 no mod constant! 7 + 3*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 2 0; varGCD=3 no mod constant! 10 + 15*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 2 0; varGCD=3 no mod constant! 17 + 27*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 0 1; no varGCD?  - 2 + x_2 + 6*x_2^2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 0 1; no varGCD?  - 1 + 5*x_2 + 6*x_2^2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 0 1; varGCD=3 no mod constant! 4 + 27*x_2 + 18*x_2^2 + 18*y_2^2 - 21*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 1 1; varGCD=3 no mod constant!  - 4 + 3*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 21*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 1 1; varGCD=3 no mod constant!  - 1 + 15*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 21*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 1 1; no varGCD? 2 + 9*x_2 + 6*x_2^2 + 4*y_2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 2 1; varGCD=3 no mod constant! 2 + 3*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 21*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 2 1; varGCD=3 no mod constant! 5 + 15*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 21*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 2 1; no varGCD? 4 + 9*x_2 + 6*x_2^2 + 8*y_2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 0 2; no varGCD?  - 5 + x_2 + 6*x_2^2 + 6*y_2^2 - 11*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 0 2; no varGCD?  - 4 + 5*x_2 + 6*x_2^2 + 6*y_2^2 - 11*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 0 2; varGCD=3 no mod constant!  - 5 + 27*x_2 + 18*x_2^2 + 18*y_2^2 - 33*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 1 2; varGCD=3 no mod constant!  - 13 + 3*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 33*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 1 2; varGCD=3 no mod constant!  - 10 + 15*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 33*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 1 2; no varGCD?  - 1 + 9*x_2 + 6*x_2^2 + 4*y_2 + 6*y_2^2 - 11*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 2 2; varGCD=3 no mod constant!  - 7 + 3*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 33*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 2 2; varGCD=3 no mod constant!  - 4 + 15*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 33*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 2 2; no varGCD? 1 + 9*x_2 + 6*x_2^2 + 8*y_2 + 6*y_2^2 - 11*z_2 - 6*z_2^2 overflow!

  4;x_1;y_1;z_1; 0 0 0; varGCD=4 no mod constant!  - 1 + 4*x_2 + 32*x_2^2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 0 0; varGCD=2 no mod constant! 1 + 10*x_2 + 16*x_2^2 + 16*y_2^2 - 6*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 0 0; varGCD=4 no mod constant! 9 + 36*x_2 + 32*x_2^2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 0 0; no varGCD? 5 + 13*x_2 + 8*x_2^2 + 8*y_2^2 - 3*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 1 0; varGCD=4 no mod constant! 1 + 4*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 1 0; no varGCD? 1 + 5*x_2 + 8*x_2^2 + 4*y_2 + 8*y_2^2 - 3*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 1 0; varGCD=4 no mod constant! 11 + 36*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 1 0; varGCD=2 no mod constant! 11 + 26*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 6*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 2 0; varGCD=4 no mod constant! 7 + 4*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 2 0; varGCD=2 no mod constant! 5 + 10*x_2 + 16*x_2^2 + 16*y_2 + 16*y_2^2 - 6*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 2 0; varGCD=4 no mod constant! 17 + 36*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 2 0; no varGCD? 7 + 13*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 3*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 3 0; varGCD=4 no mod constant! 17 + 4*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 3 0; no varGCD? 5 + 5*x_2 + 8*x_2^2 + 12*y_2 + 8*y_2^2 - 3*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 3 0; varGCD=4 no mod constant! 27 + 36*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 3 0; varGCD=2 no mod constant! 19 + 26*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 6*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 0 1; varGCD=2 no mod constant!  - 3 + 2*x_2 + 16*x_2^2 + 16*y_2^2 - 14*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 0 1; varGCD=4 no mod constant!  - 3 + 20*x_2 + 32*x_2^2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 0 1; no varGCD? 1 + 9*x_2 + 8*x_2^2 + 8*y_2^2 - 7*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 0 1; varGCD=4 no mod constant! 15 + 52*x_2 + 32*x_2^2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 1 1; no varGCD?  - 1 + x_2 + 8*x_2^2 + 4*y_2 + 8*y_2^2 - 7*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 1 1; varGCD=4 no mod constant!  - 1 + 20*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 1 1; varGCD=2 no mod constant! 3 + 18*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 14*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 1 1; varGCD=4 no mod constant! 17 + 52*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 2 1; varGCD=2 no mod constant! 1 + 2*x_2 + 16*x_2^2 + 16*y_2 + 16*y_2^2 - 14*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 2 1; varGCD=4 no mod constant! 5 + 20*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 2 1; no varGCD? 3 + 9*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 7*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 2 1; varGCD=4 no mod constant! 23 + 52*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 3 1; no varGCD? 3 + x_2 + 8*x_2^2 + 12*y_2 + 8*y_2^2 - 7*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 3 1; varGCD=4 no mod constant! 15 + 20*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 3 1; varGCD=2 no mod constant! 11 + 18*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 14*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 3 1; varGCD=4 no mod constant! 33 + 52*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 0 2; varGCD=4 no mod constant!  - 15 + 4*x_2 + 32*x_2^2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 0 2; no varGCD?  - 3 + 5*x_2 + 8*x_2^2 + 8*y_2^2 - 11*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 0 2; varGCD=4 no mod constant!  - 5 + 36*x_2 + 32*x_2^2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 0 2; varGCD=2 no mod constant! 3 + 26*x_2 + 16*x_2^2 + 16*y_2^2 - 22*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 1 2; varGCD=4 no mod constant!  - 13 + 4*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 1 2; varGCD=2 no mod constant!  - 5 + 10*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 22*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 1 2; varGCD=4 no mod constant!  - 3 + 36*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 1 2; no varGCD? 2 + 13*x_2 + 8*x_2^2 + 4*y_2 + 8*y_2^2 - 11*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 2 2; varGCD=4 no mod constant!  - 7 + 4*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 2 2; no varGCD?  - 1 + 5*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 11*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 2 2; varGCD=4 no mod constant! 3 + 36*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 2 2; varGCD=2 no mod constant! 7 + 26*x_2 + 16*x_2^2 + 16*y_2 + 16*y_2^2 - 22*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 3 2; varGCD=4 no mod constant! 3 + 4*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 3 2; varGCD=2 no mod constant! 3 + 10*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 22*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 3 2; varGCD=4 no mod constant! 13 + 36*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 3 2; no varGCD? 6 + 13*x_2 + 8*x_2^2 + 12*y_2 + 8*y_2^2 - 11*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 0 3; no varGCD?  - 7 + x_2 + 8*x_2^2 + 8*y_2^2 - 15*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 0 3; varGCD=4 no mod constant!  - 25 + 20*x_2 + 32*x_2^2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 0 3; varGCD=2 no mod constant!  - 9 + 18*x_2 + 16*x_2^2 + 16*y_2^2 - 30*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 0 3; varGCD=4 no mod constant!  - 7 + 52*x_2 + 32*x_2^2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 1 3; varGCD=2 no mod constant!  - 13 + 2*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 30*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 1 3; varGCD=4 no mod constant!  - 23 + 20*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 1 3; no varGCD?  - 4 + 9*x_2 + 8*x_2^2 + 4*y_2 + 8*y_2^2 - 15*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 1 3; varGCD=4 no mod constant!  - 5 + 52*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 2 3; no varGCD?  - 5 + x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 15*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 2 3; varGCD=4 no mod constant!  - 17 + 20*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 2 3; varGCD=2 no mod constant!  - 5 + 18*x_2 + 16*x_2^2 + 16*y_2 + 16*y_2^2 - 30*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 2 3; varGCD=4 no mod constant! 1 + 52*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 3 3; varGCD=2 no mod constant!  - 5 + 2*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 30*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 3 3; varGCD=4 no mod constant!  - 7 + 20*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 3 3; variables only? 9*x_2 + 8*x_2^2 + 12*y_2 + 8*y_2^2 - 15*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 3 3; varGCD=4 no mod constant! 11 + 52*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2

4;x;y;z; 2 0 3; varGCD=8 no mod constant!  - 5 + 16*x_1 + 16*x_1^2 + 16*y_1^2 - 24*z_1 - 16*z_1^2
4;x;y;z; 3 0 3; variables only? 3*x_1 + 2*x_1^2 + 2*y_1^2 - 3*z_1 - 2*z_1^2
  2;x_1;y_1;z_1; 0 0 0; var. set not primitive! 3*x_2 + 4*x_2^2 + 4*y_2^2 - 3*z_2 - 4*z_2^2
  2;x_1;y_1;z_1; 1 0 0; varGCD=2 no mod constant! 5 + 14*x_2 + 8*x_2^2 + 8*y_2^2 - 6*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 0 1 0; no varGCD? 1 + 3*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 3*z_2 - 4*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 1 0; varGCD=2 no mod constant! 7 + 14*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 6*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 0 0 1; varGCD=2 no mod constant!  - 5 + 6*x_2 + 8*x_2^2 + 8*y_2^2 - 14*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 1 0 1; variables only? 7*x_2 + 4*x_2^2 + 4*y_2^2 - 7*z_2 - 4*z_2^2 overflow!
  2;x_1;y_1;z_1; 0 1 1; varGCD=2 no mod constant!  - 3 + 6*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 14*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 1 1 1; no varGCD? 1 + 7*x_2 + 4*x_2^2 + 4*y_2 + 4*y_2^2 - 7*z_2 - 4*z_2^2 overflow!

  3;x_1;y_1;z_1; 0 0 0; var. set not primitive! x_2 + 2*x_2^2 + 2*y_2^2 - z_2 - 2*z_2^2
  3;x_1;y_1;z_1; 1 0 0; varGCD=3 no mod constant! 5 + 21*x_2 + 18*x_2^2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 0 0; varGCD=3 no mod constant! 14 + 33*x_2 + 18*x_2^2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 1 0; varGCD=3 no mod constant! 2 + 9*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 1 0; varGCD=3 no mod constant! 7 + 21*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 1 0; varGCD=3 no mod constant! 16 + 33*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 2 0; varGCD=3 no mod constant! 8 + 9*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 2 0; varGCD=3 no mod constant! 13 + 21*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 2 0; varGCD=3 no mod constant! 22 + 33*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 0 1; varGCD=3 no mod constant!  - 5 + 9*x_2 + 18*x_2^2 + 18*y_2^2 - 21*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 0 1; variables only? 7*x_2 + 6*x_2^2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 0 1; no varGCD? 3 + 11*x_2 + 6*x_2^2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 1 1; no varGCD?  - 1 + 3*x_2 + 6*x_2^2 + 4*y_2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 1 1; varGCD=3 no mod constant! 2 + 21*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 21*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 1 1; varGCD=3 no mod constant! 11 + 33*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 21*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 2 1; no varGCD? 1 + 3*x_2 + 6*x_2^2 + 8*y_2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 2 1; varGCD=3 no mod constant! 8 + 21*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 21*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 2 1; varGCD=3 no mod constant! 17 + 33*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 21*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 0 2; varGCD=3 no mod constant!  - 14 + 9*x_2 + 18*x_2^2 + 18*y_2^2 - 33*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 0 2; no varGCD?  - 3 + 7*x_2 + 6*x_2^2 + 6*y_2^2 - 11*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 0 2; variables only? 11*x_2 + 6*x_2^2 + 6*y_2^2 - 11*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 1 2; no varGCD?  - 4 + 3*x_2 + 6*x_2^2 + 4*y_2 + 6*y_2^2 - 11*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 1 2; varGCD=3 no mod constant!  - 7 + 21*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 33*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 1 2; varGCD=3 no mod constant! 2 + 33*x_2 + 18*x_2^2 + 12*y_2 + 18*y_2^2 - 33*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 2 2; no varGCD?  - 2 + 3*x_2 + 6*x_2^2 + 8*y_2 + 6*y_2^2 - 11*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 2 2; varGCD=3 no mod constant!  - 1 + 21*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 33*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 2 2; varGCD=3 no mod constant! 8 + 33*x_2 + 18*x_2^2 + 24*y_2 + 18*y_2^2 - 33*z_2 - 18*z_2^2

  4;x_1;y_1;z_1; 0 0 0; var. set not primitive! 3*x_2 + 8*x_2^2 + 8*y_2^2 - 3*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 0 0; varGCD=4 no mod constant! 5 + 28*x_2 + 32*x_2^2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 0 0; varGCD=2 no mod constant! 7 + 22*x_2 + 16*x_2^2 + 16*y_2^2 - 6*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 0 0; varGCD=4 no mod constant! 27 + 60*x_2 + 32*x_2^2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 1 0; varGCD=2 no mod constant! 1 + 6*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 6*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 1 0; varGCD=4 no mod constant! 7 + 28*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 1 0; no varGCD? 4 + 11*x_2 + 8*x_2^2 + 4*y_2 + 8*y_2^2 - 3*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 1 0; varGCD=4 no mod constant! 29 + 60*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 2 0; no varGCD? 2 + 3*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 3*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 2 0; varGCD=4 no mod constant! 13 + 28*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 2 0; varGCD=2 no mod constant! 11 + 22*x_2 + 16*x_2^2 + 16*y_2 + 16*y_2^2 - 6*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 2 0; varGCD=4 no mod constant! 35 + 60*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 3 0; varGCD=2 no mod constant! 9 + 6*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 6*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 3 0; varGCD=4 no mod constant! 23 + 28*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 3 0; no varGCD? 8 + 11*x_2 + 8*x_2^2 + 12*y_2 + 8*y_2^2 - 3*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 3 0; varGCD=4 no mod constant! 45 + 60*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 0 1; varGCD=4 no mod constant!  - 5 + 12*x_2 + 32*x_2^2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 0 1; variables only? 7*x_2 + 8*x_2^2 + 8*y_2^2 - 7*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 0 1; varGCD=4 no mod constant! 9 + 44*x_2 + 32*x_2^2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 0 1; varGCD=2 no mod constant! 11 + 30*x_2 + 16*x_2^2 + 16*y_2^2 - 14*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 1 1; varGCD=4 no mod constant!  - 3 + 12*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 1 1; varGCD=2 no mod constant! 1 + 14*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 14*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 1 1; varGCD=4 no mod constant! 11 + 44*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 1 1; no varGCD? 6 + 15*x_2 + 8*x_2^2 + 4*y_2 + 8*y_2^2 - 7*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 2 1; varGCD=4 no mod constant! 3 + 12*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 2 1; no varGCD? 2 + 7*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 7*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 2 1; varGCD=4 no mod constant! 17 + 44*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 2 1; varGCD=2 no mod constant! 15 + 30*x_2 + 16*x_2^2 + 16*y_2 + 16*y_2^2 - 14*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 3 1; varGCD=4 no mod constant! 13 + 12*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 3 1; varGCD=2 no mod constant! 9 + 14*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 14*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 3 1; varGCD=4 no mod constant! 27 + 44*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 3 1; no varGCD? 10 + 15*x_2 + 8*x_2^2 + 12*y_2 + 8*y_2^2 - 7*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 0 2; varGCD=2 no mod constant!  - 7 + 6*x_2 + 16*x_2^2 + 16*y_2^2 - 22*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 0 2; varGCD=4 no mod constant!  - 9 + 28*x_2 + 32*x_2^2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 0 2; variables only? 11*x_2 + 8*x_2^2 + 8*y_2^2 - 11*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 0 2; varGCD=4 no mod constant! 13 + 60*x_2 + 32*x_2^2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 1 2; no varGCD?  - 3 + 3*x_2 + 8*x_2^2 + 4*y_2 + 8*y_2^2 - 11*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 1 2; varGCD=4 no mod constant!  - 7 + 28*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 1 2; varGCD=2 no mod constant! 1 + 22*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 22*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 1 2; varGCD=4 no mod constant! 15 + 60*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 2 2; varGCD=2 no mod constant!  - 3 + 6*x_2 + 16*x_2^2 + 16*y_2 + 16*y_2^2 - 22*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 2 2; varGCD=4 no mod constant!  - 1 + 28*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 2 2; no varGCD? 2 + 11*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 11*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 2 2; varGCD=4 no mod constant! 21 + 60*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 3 2; no varGCD? 1 + 3*x_2 + 8*x_2^2 + 12*y_2 + 8*y_2^2 - 11*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 3 2; varGCD=4 no mod constant! 9 + 28*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 3 2; varGCD=2 no mod constant! 9 + 22*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 22*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 3 2; varGCD=4 no mod constant! 31 + 60*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 0 3; varGCD=4 no mod constant!  - 27 + 12*x_2 + 32*x_2^2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 0 3; varGCD=2 no mod constant!  - 11 + 14*x_2 + 16*x_2^2 + 16*y_2^2 - 30*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 0 3; varGCD=4 no mod constant!  - 13 + 44*x_2 + 32*x_2^2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 0 3; variables only? 15*x_2 + 8*x_2^2 + 8*y_2^2 - 15*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 1 3; varGCD=4 no mod constant!  - 25 + 12*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 1 3; no varGCD?  - 5 + 7*x_2 + 8*x_2^2 + 4*y_2 + 8*y_2^2 - 15*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 1 3; varGCD=4 no mod constant!  - 11 + 44*x_2 + 32*x_2^2 + 16*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 1 3; varGCD=2 no mod constant! 1 + 30*x_2 + 16*x_2^2 + 8*y_2 + 16*y_2^2 - 30*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 2 3; varGCD=4 no mod constant!  - 19 + 12*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 2 3; varGCD=2 no mod constant!  - 7 + 14*x_2 + 16*x_2^2 + 16*y_2 + 16*y_2^2 - 30*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 2 3; varGCD=4 no mod constant!  - 5 + 44*x_2 + 32*x_2^2 + 32*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 2 3; no varGCD? 2 + 15*x_2 + 8*x_2^2 + 8*y_2 + 8*y_2^2 - 15*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 3 3; varGCD=4 no mod constant!  - 9 + 12*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 3 3; no varGCD?  - 1 + 7*x_2 + 8*x_2^2 + 12*y_2 + 8*y_2^2 - 15*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 3 3; varGCD=4 no mod constant! 5 + 44*x_2 + 32*x_2^2 + 48*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 3 3; varGCD=2 no mod constant! 9 + 30*x_2 + 16*x_2^2 + 24*y_2 + 16*y_2^2 - 30*z_2 - 16*z_2^2

4;x;y;z; 0 1 3; no varGCD?  - 1 + 2*x_1^2 + y_1 + 2*y_1^2 - 3*z_1 - 2*z_1^2
  2;x_1;y_1;z_1; 0 0 0; varGCD=2 no mod constant!  - 1 + 8*x_2^2 + 2*y_2 + 8*y_2^2 - 6*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 1 0 0; varGCD=2 no mod constant! 1 + 8*x_2 + 8*x_2^2 + 2*y_2 + 8*y_2^2 - 6*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 0 1 0; no varGCD? 1 + 4*x_2^2 + 5*y_2 + 4*y_2^2 - 3*z_2 - 4*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 1 0; no varGCD? 2 + 4*x_2 + 4*x_2^2 + 5*y_2 + 4*y_2^2 - 3*z_2 - 4*z_2^2 overflow!
  2;x_1;y_1;z_1; 0 0 1; no varGCD?  - 3 + 4*x_2^2 + y_2 + 4*y_2^2 - 7*z_2 - 4*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 0 1; no varGCD?  - 2 + 4*x_2 + 4*x_2^2 + y_2 + 4*y_2^2 - 7*z_2 - 4*z_2^2 overflow!
  2;x_1;y_1;z_1; 0 1 1; varGCD=2 no mod constant!  - 3 + 8*x_2^2 + 10*y_2 + 8*y_2^2 - 14*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 1 1 1; varGCD=2 no mod constant!  - 1 + 8*x_2 + 8*x_2^2 + 10*y_2 + 8*y_2^2 - 14*z_2 - 8*z_2^2

  3;x_1;y_1;z_1; 0 0 0; varGCD=3 no mod constant!  - 1 + 18*x_2^2 + 3*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 0 0; varGCD=3 no mod constant! 1 + 12*x_2 + 18*x_2^2 + 3*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 0 0; varGCD=3 no mod constant! 7 + 24*x_2 + 18*x_2^2 + 3*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 1 0; varGCD=3 no mod constant! 2 + 18*x_2^2 + 15*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 1 0; varGCD=3 no mod constant! 4 + 12*x_2 + 18*x_2^2 + 15*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 1 0; varGCD=3 no mod constant! 10 + 24*x_2 + 18*x_2^2 + 15*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 2 0; no varGCD? 1 + 2*x_2^2 + 3*y_2 + 2*y_2^2 - z_2 - 2*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 2 0; varGCD=3 no mod constant! 11 + 12*x_2 + 18*x_2^2 + 27*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 2 0; varGCD=3 no mod constant! 17 + 24*x_2 + 18*x_2^2 + 27*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 0 1; no varGCD?  - 2 + 6*x_2^2 + y_2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 0 1; varGCD=3 no mod constant!  - 4 + 12*x_2 + 18*x_2^2 + 3*y_2 + 18*y_2^2 - 21*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 0 1; varGCD=3 no mod constant! 2 + 24*x_2 + 18*x_2^2 + 3*y_2 + 18*y_2^2 - 21*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 1 1; no varGCD?  - 1 + 6*x_2^2 + 5*y_2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 1 1; varGCD=3 no mod constant!  - 1 + 12*x_2 + 18*x_2^2 + 15*y_2 + 18*y_2^2 - 21*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 1 1; varGCD=3 no mod constant! 5 + 24*x_2 + 18*x_2^2 + 15*y_2 + 18*y_2^2 - 21*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 2 1; varGCD=3 no mod constant! 4 + 18*x_2^2 + 27*y_2 + 18*y_2^2 - 21*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 2 1; no varGCD? 2 + 4*x_2 + 6*x_2^2 + 9*y_2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 2 1; no varGCD? 4 + 8*x_2 + 6*x_2^2 + 9*y_2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 0 2; no varGCD?  - 5 + 6*x_2^2 + y_2 + 6*y_2^2 - 11*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 0 2; varGCD=3 no mod constant!  - 13 + 12*x_2 + 18*x_2^2 + 3*y_2 + 18*y_2^2 - 33*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 0 2; varGCD=3 no mod constant!  - 7 + 24*x_2 + 18*x_2^2 + 3*y_2 + 18*y_2^2 - 33*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 1 2; no varGCD?  - 4 + 6*x_2^2 + 5*y_2 + 6*y_2^2 - 11*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 1 2; varGCD=3 no mod constant!  - 10 + 12*x_2 + 18*x_2^2 + 15*y_2 + 18*y_2^2 - 33*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 1 2; varGCD=3 no mod constant!  - 4 + 24*x_2 + 18*x_2^2 + 15*y_2 + 18*y_2^2 - 33*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 2 2; varGCD=3 no mod constant!  - 5 + 18*x_2^2 + 27*y_2 + 18*y_2^2 - 33*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 2 2; no varGCD?  - 1 + 4*x_2 + 6*x_2^2 + 9*y_2 + 6*y_2^2 - 11*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 2 2; no varGCD? 1 + 8*x_2 + 6*x_2^2 + 9*y_2 + 6*y_2^2 - 11*z_2 - 6*z_2^2 overflow!

  4;x_1;y_1;z_1; 0 0 0; varGCD=4 no mod constant!  - 1 + 32*x_2^2 + 4*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 0 0; varGCD=4 no mod constant! 1 + 16*x_2 + 32*x_2^2 + 4*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 0 0; varGCD=4 no mod constant! 7 + 32*x_2 + 32*x_2^2 + 4*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 0 0; varGCD=4 no mod constant! 17 + 48*x_2 + 32*x_2^2 + 4*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 1 0; varGCD=2 no mod constant! 1 + 16*x_2^2 + 10*y_2 + 16*y_2^2 - 6*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 1 0; no varGCD? 1 + 4*x_2 + 8*x_2^2 + 5*y_2 + 8*y_2^2 - 3*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 1 0; varGCD=2 no mod constant! 5 + 16*x_2 + 16*x_2^2 + 10*y_2 + 16*y_2^2 - 6*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 1 0; no varGCD? 5 + 12*x_2 + 8*x_2^2 + 5*y_2 + 8*y_2^2 - 3*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 2 0; varGCD=4 no mod constant! 9 + 32*x_2^2 + 36*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 2 0; varGCD=4 no mod constant! 11 + 16*x_2 + 32*x_2^2 + 36*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 2 0; varGCD=4 no mod constant! 17 + 32*x_2 + 32*x_2^2 + 36*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 2 0; varGCD=4 no mod constant! 27 + 48*x_2 + 32*x_2^2 + 36*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 3 0; no varGCD? 5 + 8*x_2^2 + 13*y_2 + 8*y_2^2 - 3*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 3 0; varGCD=2 no mod constant! 11 + 8*x_2 + 16*x_2^2 + 26*y_2 + 16*y_2^2 - 6*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 3 0; no varGCD? 7 + 8*x_2 + 8*x_2^2 + 13*y_2 + 8*y_2^2 - 3*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 3 0; varGCD=2 no mod constant! 19 + 24*x_2 + 16*x_2^2 + 26*y_2 + 16*y_2^2 - 6*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 0 1; varGCD=2 no mod constant!  - 3 + 16*x_2^2 + 2*y_2 + 16*y_2^2 - 14*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 0 1; no varGCD?  - 1 + 4*x_2 + 8*x_2^2 + y_2 + 8*y_2^2 - 7*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 0 1; varGCD=2 no mod constant! 1 + 16*x_2 + 16*x_2^2 + 2*y_2 + 16*y_2^2 - 14*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 0 1; no varGCD? 3 + 12*x_2 + 8*x_2^2 + y_2 + 8*y_2^2 - 7*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 1 1; varGCD=4 no mod constant!  - 3 + 32*x_2^2 + 20*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 1 1; varGCD=4 no mod constant!  - 1 + 16*x_2 + 32*x_2^2 + 20*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 1 1; varGCD=4 no mod constant! 5 + 32*x_2 + 32*x_2^2 + 20*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 1 1; varGCD=4 no mod constant! 15 + 48*x_2 + 32*x_2^2 + 20*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 2 1; no varGCD? 1 + 8*x_2^2 + 9*y_2 + 8*y_2^2 - 7*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 2 1; varGCD=2 no mod constant! 3 + 8*x_2 + 16*x_2^2 + 18*y_2 + 16*y_2^2 - 14*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 2 1; no varGCD? 3 + 8*x_2 + 8*x_2^2 + 9*y_2 + 8*y_2^2 - 7*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 2 1; varGCD=2 no mod constant! 11 + 24*x_2 + 16*x_2^2 + 18*y_2 + 16*y_2^2 - 14*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 3 1; varGCD=4 no mod constant! 15 + 32*x_2^2 + 52*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 3 1; varGCD=4 no mod constant! 17 + 16*x_2 + 32*x_2^2 + 52*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 3 1; varGCD=4 no mod constant! 23 + 32*x_2 + 32*x_2^2 + 52*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 3 1; varGCD=4 no mod constant! 33 + 48*x_2 + 32*x_2^2 + 52*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 0 2; varGCD=4 no mod constant!  - 15 + 32*x_2^2 + 4*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 0 2; varGCD=4 no mod constant!  - 13 + 16*x_2 + 32*x_2^2 + 4*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 0 2; varGCD=4 no mod constant!  - 7 + 32*x_2 + 32*x_2^2 + 4*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 0 2; varGCD=4 no mod constant! 3 + 48*x_2 + 32*x_2^2 + 4*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 1 2; no varGCD?  - 3 + 8*x_2^2 + 5*y_2 + 8*y_2^2 - 11*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 1 2; varGCD=2 no mod constant!  - 5 + 8*x_2 + 16*x_2^2 + 10*y_2 + 16*y_2^2 - 22*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 1 2; no varGCD?  - 1 + 8*x_2 + 8*x_2^2 + 5*y_2 + 8*y_2^2 - 11*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 1 2; varGCD=2 no mod constant! 3 + 24*x_2 + 16*x_2^2 + 10*y_2 + 16*y_2^2 - 22*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 2 2; varGCD=4 no mod constant!  - 5 + 32*x_2^2 + 36*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 2 2; varGCD=4 no mod constant!  - 3 + 16*x_2 + 32*x_2^2 + 36*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 2 2; varGCD=4 no mod constant! 3 + 32*x_2 + 32*x_2^2 + 36*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 2 2; varGCD=4 no mod constant! 13 + 48*x_2 + 32*x_2^2 + 36*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 3 2; varGCD=2 no mod constant! 3 + 16*x_2^2 + 26*y_2 + 16*y_2^2 - 22*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 3 2; no varGCD? 2 + 4*x_2 + 8*x_2^2 + 13*y_2 + 8*y_2^2 - 11*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 3 2; varGCD=2 no mod constant! 7 + 16*x_2 + 16*x_2^2 + 26*y_2 + 16*y_2^2 - 22*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 3 2; no varGCD? 6 + 12*x_2 + 8*x_2^2 + 13*y_2 + 8*y_2^2 - 11*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 0 3; no varGCD?  - 7 + 8*x_2^2 + y_2 + 8*y_2^2 - 15*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 0 3; varGCD=2 no mod constant!  - 13 + 8*x_2 + 16*x_2^2 + 2*y_2 + 16*y_2^2 - 30*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 0 3; no varGCD?  - 5 + 8*x_2 + 8*x_2^2 + y_2 + 8*y_2^2 - 15*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 0 3; varGCD=2 no mod constant!  - 5 + 24*x_2 + 16*x_2^2 + 2*y_2 + 16*y_2^2 - 30*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 1 3; varGCD=4 no mod constant!  - 25 + 32*x_2^2 + 20*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 1 3; varGCD=4 no mod constant!  - 23 + 16*x_2 + 32*x_2^2 + 20*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 1 3; varGCD=4 no mod constant!  - 17 + 32*x_2 + 32*x_2^2 + 20*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 1 3; varGCD=4 no mod constant!  - 7 + 48*x_2 + 32*x_2^2 + 20*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 2 3; varGCD=2 no mod constant!  - 9 + 16*x_2^2 + 18*y_2 + 16*y_2^2 - 30*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 2 3; no varGCD?  - 4 + 4*x_2 + 8*x_2^2 + 9*y_2 + 8*y_2^2 - 15*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 2 3; varGCD=2 no mod constant!  - 5 + 16*x_2 + 16*x_2^2 + 18*y_2 + 16*y_2^2 - 30*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 2 3; variables only? 12*x_2 + 8*x_2^2 + 9*y_2 + 8*y_2^2 - 15*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 3 3; varGCD=4 no mod constant!  - 7 + 32*x_2^2 + 52*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 3 3; varGCD=4 no mod constant!  - 5 + 16*x_2 + 32*x_2^2 + 52*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 3 3; varGCD=4 no mod constant! 1 + 32*x_2 + 32*x_2^2 + 52*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 3 3; varGCD=4 no mod constant! 11 + 48*x_2 + 32*x_2^2 + 52*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2

4;x;y;z; 1 1 3; varGCD=8 no mod constant!  - 7 + 8*x_1 + 16*x_1^2 + 8*y_1 + 16*y_1^2 - 24*z_1 - 16*z_1^2
4;x;y;z; 2 1 3; varGCD=2 no mod constant!  - 1 + 4*x_1 + 4*x_1^2 + 2*y_1 + 4*y_1^2 - 6*z_1 - 4*z_1^2
4;x;y;z; 3 1 3; varGCD=8 no mod constant! 1 + 24*x_1 + 16*x_1^2 + 8*y_1 + 16*y_1^2 - 24*z_1 - 16*z_1^2
4;x;y;z; 0 2 3; varGCD=8 no mod constant!  - 5 + 16*x_1^2 + 16*y_1 + 16*y_1^2 - 24*z_1 - 16*z_1^2
4;x;y;z; 1 2 3; varGCD=2 no mod constant!  - 1 + 2*x_1 + 4*x_1^2 + 4*y_1 + 4*y_1^2 - 6*z_1 - 4*z_1^2
4;x;y;z; 2 2 3; varGCD=8 no mod constant!  - 1 + 16*x_1 + 16*x_1^2 + 16*y_1 + 16*y_1^2 - 24*z_1 - 16*z_1^2
4;x;y;z; 3 2 3; varGCD=2 no mod constant! 1 + 6*x_1 + 4*x_1^2 + 4*y_1 + 4*y_1^2 - 6*z_1 - 4*z_1^2
4;x;y;z; 0 3 3; variables only? 2*x_1^2 + 3*y_1 + 2*y_1^2 - 3*z_1 - 2*z_1^2
  2;x_1;y_1;z_1; 0 0 0; var. set not primitive! 4*x_2^2 + 3*y_2 + 4*y_2^2 - 3*z_2 - 4*z_2^2
  2;x_1;y_1;z_1; 1 0 0; no varGCD? 1 + 4*x_2 + 4*x_2^2 + 3*y_2 + 4*y_2^2 - 3*z_2 - 4*z_2^2 overflow!
  2;x_1;y_1;z_1; 0 1 0; varGCD=2 no mod constant! 5 + 8*x_2^2 + 14*y_2 + 8*y_2^2 - 6*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 1 1 0; varGCD=2 no mod constant! 7 + 8*x_2 + 8*x_2^2 + 14*y_2 + 8*y_2^2 - 6*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 0 0 1; varGCD=2 no mod constant!  - 5 + 8*x_2^2 + 6*y_2 + 8*y_2^2 - 14*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 1 0 1; varGCD=2 no mod constant!  - 3 + 8*x_2 + 8*x_2^2 + 6*y_2 + 8*y_2^2 - 14*z_2 - 8*z_2^2
  2;x_1;y_1;z_1; 0 1 1; variables only? 4*x_2^2 + 7*y_2 + 4*y_2^2 - 7*z_2 - 4*z_2^2 overflow!
  2;x_1;y_1;z_1; 1 1 1; no varGCD? 1 + 4*x_2 + 4*x_2^2 + 7*y_2 + 4*y_2^2 - 7*z_2 - 4*z_2^2 overflow!

  3;x_1;y_1;z_1; 0 0 0; var. set not primitive! 2*x_2^2 + y_2 + 2*y_2^2 - z_2 - 2*z_2^2
  3;x_1;y_1;z_1; 1 0 0; varGCD=3 no mod constant! 2 + 12*x_2 + 18*x_2^2 + 9*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 0 0; varGCD=3 no mod constant! 8 + 24*x_2 + 18*x_2^2 + 9*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 1 0; varGCD=3 no mod constant! 5 + 18*x_2^2 + 21*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 1 0; varGCD=3 no mod constant! 7 + 12*x_2 + 18*x_2^2 + 21*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 1 0; varGCD=3 no mod constant! 13 + 24*x_2 + 18*x_2^2 + 21*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 2 0; varGCD=3 no mod constant! 14 + 18*x_2^2 + 33*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 2 0; varGCD=3 no mod constant! 16 + 12*x_2 + 18*x_2^2 + 33*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 2 0; varGCD=3 no mod constant! 22 + 24*x_2 + 18*x_2^2 + 33*y_2 + 18*y_2^2 - 9*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 0 1; varGCD=3 no mod constant!  - 5 + 18*x_2^2 + 9*y_2 + 18*y_2^2 - 21*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 0 1; no varGCD?  - 1 + 4*x_2 + 6*x_2^2 + 3*y_2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 0 1; no varGCD? 1 + 8*x_2 + 6*x_2^2 + 3*y_2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 1 1; variables only? 6*x_2^2 + 7*y_2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 1 1; varGCD=3 no mod constant! 2 + 12*x_2 + 18*x_2^2 + 21*y_2 + 18*y_2^2 - 21*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 1 1; varGCD=3 no mod constant! 8 + 24*x_2 + 18*x_2^2 + 21*y_2 + 18*y_2^2 - 21*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 2 1; no varGCD? 3 + 6*x_2^2 + 11*y_2 + 6*y_2^2 - 7*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 2 1; varGCD=3 no mod constant! 11 + 12*x_2 + 18*x_2^2 + 33*y_2 + 18*y_2^2 - 21*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 2 1; varGCD=3 no mod constant! 17 + 24*x_2 + 18*x_2^2 + 33*y_2 + 18*y_2^2 - 21*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 0 2; varGCD=3 no mod constant!  - 14 + 18*x_2^2 + 9*y_2 + 18*y_2^2 - 33*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 1 0 2; no varGCD?  - 4 + 4*x_2 + 6*x_2^2 + 3*y_2 + 6*y_2^2 - 11*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 2 0 2; no varGCD?  - 2 + 8*x_2 + 6*x_2^2 + 3*y_2 + 6*y_2^2 - 11*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 0 1 2; no varGCD?  - 3 + 6*x_2^2 + 7*y_2 + 6*y_2^2 - 11*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 1 2; varGCD=3 no mod constant!  - 7 + 12*x_2 + 18*x_2^2 + 21*y_2 + 18*y_2^2 - 33*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 1 2; varGCD=3 no mod constant!  - 1 + 24*x_2 + 18*x_2^2 + 21*y_2 + 18*y_2^2 - 33*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 0 2 2; variables only? 6*x_2^2 + 11*y_2 + 6*y_2^2 - 11*z_2 - 6*z_2^2 overflow!
  3;x_1;y_1;z_1; 1 2 2; varGCD=3 no mod constant! 2 + 12*x_2 + 18*x_2^2 + 33*y_2 + 18*y_2^2 - 33*z_2 - 18*z_2^2
  3;x_1;y_1;z_1; 2 2 2; varGCD=3 no mod constant! 8 + 24*x_2 + 18*x_2^2 + 33*y_2 + 18*y_2^2 - 33*z_2 - 18*z_2^2

  4;x_1;y_1;z_1; 0 0 0; var. set not primitive! 8*x_2^2 + 3*y_2 + 8*y_2^2 - 3*z_2 - 8*z_2^2
  4;x_1;y_1;z_1; 1 0 0; varGCD=2 no mod constant! 1 + 8*x_2 + 16*x_2^2 + 6*y_2 + 16*y_2^2 - 6*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 0 0; no varGCD? 2 + 8*x_2 + 8*x_2^2 + 3*y_2 + 8*y_2^2 - 3*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 0 0; varGCD=2 no mod constant! 9 + 24*x_2 + 16*x_2^2 + 6*y_2 + 16*y_2^2 - 6*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 1 0; varGCD=4 no mod constant! 5 + 32*x_2^2 + 28*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 1 0; varGCD=4 no mod constant! 7 + 16*x_2 + 32*x_2^2 + 28*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 1 0; varGCD=4 no mod constant! 13 + 32*x_2 + 32*x_2^2 + 28*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 1 0; varGCD=4 no mod constant! 23 + 48*x_2 + 32*x_2^2 + 28*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 2 0; varGCD=2 no mod constant! 7 + 16*x_2^2 + 22*y_2 + 16*y_2^2 - 6*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 2 0; no varGCD? 4 + 4*x_2 + 8*x_2^2 + 11*y_2 + 8*y_2^2 - 3*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 2 0; varGCD=2 no mod constant! 11 + 16*x_2 + 16*x_2^2 + 22*y_2 + 16*y_2^2 - 6*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 2 0; no varGCD? 8 + 12*x_2 + 8*x_2^2 + 11*y_2 + 8*y_2^2 - 3*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 3 0; varGCD=4 no mod constant! 27 + 32*x_2^2 + 60*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 3 0; varGCD=4 no mod constant! 29 + 16*x_2 + 32*x_2^2 + 60*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 3 0; varGCD=4 no mod constant! 35 + 32*x_2 + 32*x_2^2 + 60*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 3 0; varGCD=4 no mod constant! 45 + 48*x_2 + 32*x_2^2 + 60*y_2 + 32*y_2^2 - 12*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 0 1; varGCD=4 no mod constant!  - 5 + 32*x_2^2 + 12*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 0 1; varGCD=4 no mod constant!  - 3 + 16*x_2 + 32*x_2^2 + 12*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 0 1; varGCD=4 no mod constant! 3 + 32*x_2 + 32*x_2^2 + 12*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 0 1; varGCD=4 no mod constant! 13 + 48*x_2 + 32*x_2^2 + 12*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 1 1; variables only? 8*x_2^2 + 7*y_2 + 8*y_2^2 - 7*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 1 1; varGCD=2 no mod constant! 1 + 8*x_2 + 16*x_2^2 + 14*y_2 + 16*y_2^2 - 14*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 1 1; no varGCD? 2 + 8*x_2 + 8*x_2^2 + 7*y_2 + 8*y_2^2 - 7*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 1 1; varGCD=2 no mod constant! 9 + 24*x_2 + 16*x_2^2 + 14*y_2 + 16*y_2^2 - 14*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 2 1; varGCD=4 no mod constant! 9 + 32*x_2^2 + 44*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 2 1; varGCD=4 no mod constant! 11 + 16*x_2 + 32*x_2^2 + 44*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 2 1; varGCD=4 no mod constant! 17 + 32*x_2 + 32*x_2^2 + 44*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 2 1; varGCD=4 no mod constant! 27 + 48*x_2 + 32*x_2^2 + 44*y_2 + 32*y_2^2 - 28*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 3 1; varGCD=2 no mod constant! 11 + 16*x_2^2 + 30*y_2 + 16*y_2^2 - 14*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 3 1; no varGCD? 6 + 4*x_2 + 8*x_2^2 + 15*y_2 + 8*y_2^2 - 7*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 3 1; varGCD=2 no mod constant! 15 + 16*x_2 + 16*x_2^2 + 30*y_2 + 16*y_2^2 - 14*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 3 1; no varGCD? 10 + 12*x_2 + 8*x_2^2 + 15*y_2 + 8*y_2^2 - 7*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 0 2; varGCD=2 no mod constant!  - 7 + 16*x_2^2 + 6*y_2 + 16*y_2^2 - 22*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 0 2; no varGCD?  - 3 + 4*x_2 + 8*x_2^2 + 3*y_2 + 8*y_2^2 - 11*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 0 2; varGCD=2 no mod constant!  - 3 + 16*x_2 + 16*x_2^2 + 6*y_2 + 16*y_2^2 - 22*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 0 2; no varGCD? 1 + 12*x_2 + 8*x_2^2 + 3*y_2 + 8*y_2^2 - 11*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 1 2; varGCD=4 no mod constant!  - 9 + 32*x_2^2 + 28*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 1 2; varGCD=4 no mod constant!  - 7 + 16*x_2 + 32*x_2^2 + 28*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 1 2; varGCD=4 no mod constant!  - 1 + 32*x_2 + 32*x_2^2 + 28*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 1 2; varGCD=4 no mod constant! 9 + 48*x_2 + 32*x_2^2 + 28*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 2 2; variables only? 8*x_2^2 + 11*y_2 + 8*y_2^2 - 11*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 2 2; varGCD=2 no mod constant! 1 + 8*x_2 + 16*x_2^2 + 22*y_2 + 16*y_2^2 - 22*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 2 2; no varGCD? 2 + 8*x_2 + 8*x_2^2 + 11*y_2 + 8*y_2^2 - 11*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 2 2; varGCD=2 no mod constant! 9 + 24*x_2 + 16*x_2^2 + 22*y_2 + 16*y_2^2 - 22*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 0 3 2; varGCD=4 no mod constant! 13 + 32*x_2^2 + 60*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 3 2; varGCD=4 no mod constant! 15 + 16*x_2 + 32*x_2^2 + 60*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 3 2; varGCD=4 no mod constant! 21 + 32*x_2 + 32*x_2^2 + 60*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 3 2; varGCD=4 no mod constant! 31 + 48*x_2 + 32*x_2^2 + 60*y_2 + 32*y_2^2 - 44*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 0 3; varGCD=4 no mod constant!  - 27 + 32*x_2^2 + 12*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 0 3; varGCD=4 no mod constant!  - 25 + 16*x_2 + 32*x_2^2 + 12*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 0 3; varGCD=4 no mod constant!  - 19 + 32*x_2 + 32*x_2^2 + 12*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 0 3; varGCD=4 no mod constant!  - 9 + 48*x_2 + 32*x_2^2 + 12*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 1 3; varGCD=2 no mod constant!  - 11 + 16*x_2^2 + 14*y_2 + 16*y_2^2 - 30*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 1 1 3; no varGCD?  - 5 + 4*x_2 + 8*x_2^2 + 7*y_2 + 8*y_2^2 - 15*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 2 1 3; varGCD=2 no mod constant!  - 7 + 16*x_2 + 16*x_2^2 + 14*y_2 + 16*y_2^2 - 30*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 3 1 3; no varGCD?  - 1 + 12*x_2 + 8*x_2^2 + 7*y_2 + 8*y_2^2 - 15*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 0 2 3; varGCD=4 no mod constant!  - 13 + 32*x_2^2 + 44*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 1 2 3; varGCD=4 no mod constant!  - 11 + 16*x_2 + 32*x_2^2 + 44*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 2 2 3; varGCD=4 no mod constant!  - 5 + 32*x_2 + 32*x_2^2 + 44*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 3 2 3; varGCD=4 no mod constant! 5 + 48*x_2 + 32*x_2^2 + 44*y_2 + 32*y_2^2 - 60*z_2 - 32*z_2^2
  4;x_1;y_1;z_1; 0 3 3; variables only? 8*x_2^2 + 15*y_2 + 8*y_2^2 - 15*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 1 3 3; varGCD=2 no mod constant! 1 + 8*x_2 + 16*x_2^2 + 30*y_2 + 16*y_2^2 - 30*z_2 - 16*z_2^2
  4;x_1;y_1;z_1; 2 3 3; no varGCD? 2 + 8*x_2 + 8*x_2^2 + 15*y_2 + 8*y_2^2 - 15*z_2 - 8*z_2^2 overflow!
  4;x_1;y_1;z_1; 3 3 3; varGCD=2 no mod constant! 9 + 24*x_2 + 16*x_2^2 + 30*y_2 + 16*y_2^2 - 30*z_2 - 16*z_2^2

4;x;y;z; 1 3 3; varGCD=8 no mod constant! 1 + 8*x_1 + 16*x_1^2 + 24*y_1 + 16*y_1^2 - 24*z_1 - 16*z_1^2
4;x;y;z; 2 3 3; varGCD=2 no mod constant! 1 + 4*x_1 + 4*x_1^2 + 6*y_1 + 4*y_1^2 - 6*z_1 - 4*z_1^2
4;x;y;z; 3 3 3; varGCD=8 no mod constant! 9 + 24*x_1 + 16*x_1^2 + 24*y_1 + 16*y_1^2 - 24*z_1 - 16*z_1^2

