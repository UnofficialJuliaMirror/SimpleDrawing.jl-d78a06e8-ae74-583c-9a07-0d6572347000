using Test, SimpleDrawing, Plots

@test non_colinear_check(im, 2im, 2im+1)
z = 1+im
@test !non_colinear_check(z,-z,2z)

@test isinf(find_center(im,2im,3im))
@test find_center(im,-1+0im,1+im) == 0.5 - 0.5im
