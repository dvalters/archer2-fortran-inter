program array_sections

  implicit none

  ! Given the following arrays ...

  integer :: a(10)   = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  integer :: b(2, 3) = reshape( [1,2,3,4,5,6], shape = [2,3])

  ! Write an array section to print ...
  
  ! a. elements 1, 2 and 7 of a
  print *, "a(1,2,7) ", a( [1, 2, 7])
  ! b. all elements of a with odd index
  print *, "a(odd) ", a(1::2)   ! can leave out upper bound in the middle here

  ! c. elements b(1, 1), b(2, 1), b(1, 3) and b(2, 3)
  print *, "b(..)", b(1:2, 1:3:2)

end program array_sections
