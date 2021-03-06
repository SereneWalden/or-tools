************************************************************************
file with basedata            : md271_.bas
initial value random generator: 1839421111
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  20
horizon                       :  155
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     18      0       26        4       26
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5  10  11
   3        3          3           6  10  12
   4        3          2          13  15
   5        3          1           7
   6        3          2           9  11
   7        3          3           8   9  14
   8        3          1          15
   9        3          3          13  15  18
  10        3          2          17  18
  11        3          1          14
  12        3          3          17  18  19
  13        3          2          16  19
  14        3          2          16  19
  15        3          1          16
  16        3          1          17
  17        3          1          20
  18        3          1          20
  19        3          1          20
  20        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1       7    2    0    7
         2     6       4    2    0    5
         3     8       2    1    0    1
  3      1     2       8    8    0    9
         2     2       7    7    4    0
         3    10       7    4    0    9
  4      1     2       7    7    9    0
         2     3       6    6    9    0
         3     8       6    5    0    7
  5      1     6       8    3    3    0
         2     8       8    3    0    2
         3    10       8    2    0    1
  6      1     5       9    7    3    0
         2     9       8    4    1    0
         3     9       9    4    0    6
  7      1     2       8    8    3    0
         2     2       7    8    0    5
         3     3       5    6    0    5
  8      1     2       5   10    2    0
         2     6       5    9    0    7
         3    10       2    8    0    3
  9      1     5       6    2    5    0
         2     5       6    2    0    9
         3     9       6    1    5    0
 10      1     1       2    7    0    4
         2     5       2    5    0    4
         3     6       1    5    2    0
 11      1     6       5    8    9    0
         2     7       3    7    8    0
         3    10       3    5    8    0
 12      1     1       5    6    2    0
         2     4       4    6    0    5
         3     7       4    5    2    0
 13      1     7       9    6    0    6
         2    10       8    6    0    4
         3    10       9    4    0    3
 14      1     2       8   10    6    0
         2     6       5    9    0    9
         3    10       3    8    6    0
 15      1     2       8    5    6    0
         2     6       5    3    3    0
         3     7       4    1    0    7
 16      1     1       6    9    0    9
         2     7       5    9    9    0
         3     9       5    8    8    0
 17      1     4       7    9    4    0
         2     7       7    7    0    4
         3     9       6    5    0    4
 18      1     4       7    5    8    0
         2     7       6    3    0    1
         3    10       5    2    6    0
 19      1     1       6    8    7    0
         2     4       6    8    0    4
         3    10       5    6    0    3
 20      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   26   22   45   53
************************************************************************
