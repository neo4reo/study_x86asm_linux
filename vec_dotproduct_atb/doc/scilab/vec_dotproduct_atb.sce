//       1         2         3         4         5         6         7
//34567890123456789012345678901234567890123456789012345678901234567890
//////////////////////////////////////////////////////////////////////
//
// Title: Transpose of vector A dot product vector B.
//
//--------------------------------------------------------------------
//       Author: Nik Mohamad Aizuddin bin Nik Azmi
// Date Created: 09-APR-2015
//--------------------------------------------------------------------
//
//                  MIT Licensed. See LICENSE file
//
//////////////////////////////////////////////////////////////////////

function[] = vec_dotproduct_atb()

    // Column vector A
    A = [32.4012
         90.3214
         84.1235
         90.3213
         52.2014];

    // Column vector B
    B = [52.1234
         97.3125
         12.5512
         86.3215
         92.9642];

    // C = A'*B
    C = 0;
    for i=1:1:size(A,'r')
        C = C + (A(i)*B(i));
    end

    disp("C =");disp(C);

endfunction