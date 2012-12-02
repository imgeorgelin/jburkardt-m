function uniform_test20 ( )

%*****************************************************************************80
%
%% UNIFORM_TEST20 tests R8_UNIFORM_01 and R8VEC_UNIFORM_01.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    29 June 2006
%
%  Author:
%
%    John Burkardt
%
  n = 10;
  seed_init = 123456789;

  fprintf ( 1, '\n' );
  fprintf ( 1, 'UNIFORM_TEST20\n' );
  fprintf ( 1, '  R8_UNIFORM_01 gets pseudeorandom values one at a time.\n' );
  fprintf ( 1, '  R8VEC_UNIFORM_01 computes a vector of values.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  For the same seed, the results should be identical,\n' );
  fprintf ( 1, '  but R8VEC_UNIFORM_01 might be faster.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  Initial seed is %d\n', seed_init );

  seed = seed_init;

  for i = 1 : n
    [ a(i), seed ] = r8_uniform_01 ( seed );
  end

  seed = seed_init;
  [ b, seed ] = r8vec_uniform_01 ( n, seed );

  fprintf ( 1, '\n' );
  fprintf ( 1, '       I      A(I)          B(I)\n' );
  fprintf ( 1, '          (R8_UNIFORM_01)  (R8VEC_UNIFORM_01)\n' );
  fprintf ( 1, '\n' );

  for i = 1 : n
    fprintf ( 1, '  %6d  %12f  %12f\n', i, a(i), b(i) );
  end

  return
end