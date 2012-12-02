function blas1_z_test01 ( )

%*****************************************************************************80
%
%% TEST01 tests DZASUM.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    09 May 2006
%
%  Author:
%
%    John Burkardt
%
  ma = 5;
  na = 4;
  nx = 8;

  a = [ ...
    - 3.0 + 4.0 * i, ...
      2.0 + 0.0 * i, ...
      3.0 - 4.0 * i, ...
      2.0 + 0.0 * i; ...
      2.0 - 1.0 * i, ...
    - 1.0 + 1.0 * i, ...
      0.0 + 5.0 * i, ...
    - 4.0 - 2.0 * i; ...
    - 4.0 + 1.0 * i, ...
    - 4.0 - 3.0 * i, ...
      0.0 - 2.0 * i, ...
      1.0 + 3.0 * i; ...
    - 3.0 + 3.0 * i, ...
    - 3.0 + 3.0 * i, ...
    - 1.0 - 2.0 * i, ...
    - 1.0 + 2.0 * i; ...
      2.0 - 4.0 * i, ...
      0.0 - 1.0 * i, ...
      0.0 - 1.0 * i, ...
    - 2.0 + 4.0 * i ];
  x = [ ...
       2.0 - 1.0 * i, ...
     - 4.0 - 2.0 * i, ...
       3.0 + 1.0 * i, ...
       2.0 + 2.0 * i, ...
     - 1.0 - 1.0 * i, ...
     - 1.0 + 0.0 * i, ...
       0.0 - 3.0 * i, ...
       4.0 + 0.0 * i ];

  fprintf ( 1, '\n' );
  fprintf ( 1, 'TEST01\n' );
  fprintf ( 1, '  DZASUM adds the absolute values of elements\n' );
  fprintf ( 1, '  of a complex vector.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  X =\n' );
  fprintf ( 1, '\n' );
  for j = 1 : nx
    fprintf ( 1, '  %6d  %10f  %10f\n', j, real ( x(j) ), imag ( x(j) ) );
  end

  fprintf ( 1, '\n' );
  fprintf ( 1, '  DZASUM ( NX,   X, 1    ) = %f\n', ...
    dzasum ( nx,   x, 1 ) );
  fprintf ( 1, '  DZASUM ( NX/2, X, 2    ) = %f\n', ...
    dzasum ( nx/2, x, 2 ) );
  fprintf ( 1, '  DZASUM ( 2,    X, NX/2 ) = %f\n', ...
    dzasum ( 2,    x, nx/2 ) );

  fprintf ( 1, '\n' );
  fprintf ( 1, '  Demonstrate with a matrix A:\n' );
  fprintf ( 1, '\n' );
  for j = 1 : ma
    for k = 1 : na
      fprintf ( 1, '  %10f  %10f\n', real ( a(j,k) ), imag ( a(j,k) ) );
    end
    fprintf ( 1, '\n' );
  end

  fprintf ( 1, '\n' );
  fprintf ( 1, '  DZASUM ( MA, A(1:MA,2), 1 )   = %f\n', ...
    dzasum ( ma, a(1:ma,2), 1 ) );
  fprintf ( 1, '  DZASUM ( NA, A(2,1:NA), 1 ) = %f\n', ...
    dzasum ( na, a(2,1:na), 1 ) );

  return
end
