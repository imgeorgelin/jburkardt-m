function [ node_xy, triangle_node, triangle_neighbor ] = ...
  triangulation_order3_example1 ( node_num, triangle_num )

%*****************************************************************************80
%
%% TRIANGULATION_ORDER3_EXAMPLE1 sets up a sample triangulation.
%
%  Discussion:
%
%    This triangulation is actually a Delaunay triangulation.
%
%    The appropriate input values of NODE_NUM and TRIANGLE_NUM can be
%    determined by calling TRIANGULATION_ORDER3_EXAMPLE1_SIZE first.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    31 March 2005
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer NODE_NUM, the number of nodes.  
%
%    Input, integer TRIANGLE_NUM, the number of triangles.  
%
%    Output, real NODE_XY(2,NODE_NUM), the coordinates of the points.
%
%    Output, integer TRIANGLE_NODE(3,TRIANGLE_NUM), the nodes that make 
%    up the triangles.
%
%    Output, integer TRIANGLE_NEIGHBOR(3,TRIANGLE_NUM), the triangle neighbors 
%    on each side.  Negative values indicate edges that lie on the exterior.
%
  dim_num = 2;

  node_xy(1:dim_num,1:node_num) = [ ...
       0.0, 0.0; ...
       2.0, 2.0; ...
      -1.0, 3.0; ...
      -2.0, 2.0; ...
       8.0, 2.0; ...
       9.0, 5.0; ...
       7.0, 4.0; ...
       5.0, 6.0; ...
       6.0, 7.0; ...
       8.0, 8.0; ...
      11.0, 7.0; ...
      10.0, 4.0; ...
       6.0, 4.0 ]';

  triangle_node(1:3,1:triangle_num ) = [ ...
     3,   4,   1; ...
     3,   1,   2; ... 
     3,   2,   8; ...
     2,   1,   5; ...
     8,   2,  13; ...
     8,  13,   9; ...
     3,   8,   9; ...
    13,   2,   5; ...
     9,  13,   7; ...
     7,  13,   5; ...
     6,   7,   5; ...
     9,   7,   6; ...
    10,   9,   6; ...
     6,   5,  12; ...
    11,   6,  12; ...
    10,   6,  11 ]';

  triangle_neighbor(1:3,1:triangle_num) = [...
       -4,  -13,    2; ...
        1,    4,    3; ...
        2,    5,    7; ...
        2,  -43,    8; ...
        3,    8,    6; ...
        5,    9,    7; ...
        3,    6,   -3; ...
        5,    4,   10; ...
        6,   10,   12; ...
        9,    8,   11; ...
       12,   10,   14; ...
        9,   11,   13; ...
      -23,   12,   16; ...
       11,  -47,   15; ...
       16,   14,  -50; ...
       13,   15,  -39 ]';

  return
end