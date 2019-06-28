/* 

  These results can be compared with the following, simple mathematica code:

  m1 = {{0.7, 0.5}, {0.8, 0.5}};
  m2 = {{1.7, 1.5}, {1.8, 1.5}};
  res = m1.m2 // MatrixForm
  Tr @@ res


  m1 = {{0.7, 0.5, 0.5}, {0.8, 0.5, 0.5}, {0.8, 0.5, 0.5}};
  m2 = {{1.7, 1.5, 1.5}, {1.8, 1.5, 1.5}, {1.8, 1.5, 1.5}};
  res = m1.m2 // MatrixForm
  Tr @@ res

*/
#include <iostream>
#include <string>
#include <stdio.h>
#include "../common.hh"

using namespace std;


//-----------------------------------------------------------------------------
int main(int argc, char ** argv) {

  {
    double min1[2][2];
    double min2[2][2];
    double mout[2][2];

    
    min1[0][0] = 0.7;
    min1[0][1] = 0.5;
    min1[1][0] = 0.8;
    min1[1][1] = 0.5;

    min2[0][0] = 1.7;
    min2[0][1] = 1.5;
    min2[1][0] = 1.8;
    min2[1][1] = 1.5;

    multiply2(min1,min2, mout);


    for (unsigned nrow = 0; nrow < 2; nrow++) {
      for (unsigned ncol = 0; ncol < 2; ncol++) {
          cout << mout[nrow][ncol]  << " ";
      }
      cout << endl;
    }

    cout << trace2(mout) << endl;
  }

  {
    double min1[3][3];
    double min2[3][3];
    double mout[3][3];

    
    min1[0][0] = 0.7;
    min1[0][1] = 0.5;
    min1[0][2] = 0.5;
    min1[1][0] = 0.8;
    min1[1][1] = 0.5;
    min1[1][2] = 0.5;
    min1[2][0] = 0.8;
    min1[2][1] = 0.5;
    min1[2][2] = 0.5;

    min2[0][0] = 1.7;
    min2[0][1] = 1.5;
    min2[0][2] = 1.5;
    min2[1][0] = 1.8;
    min2[1][1] = 1.5;
    min2[1][2] = 1.5;
    min2[2][0] = 1.8;
    min2[2][1] = 1.5;
    min2[2][2] = 1.5;

    multiply3(min1,min2, mout);


    for (unsigned nrow = 0; nrow < 3; nrow++) {
      for (unsigned ncol = 0; ncol < 3; ncol++) {
          cout << mout[nrow][ncol]  << " ";
      }
      cout << endl;
    }

    cout << trace3(mout) << endl;

  }

}
