program example1

  implicit none

  integer :: i
  integer, target :: a(10) = [ (i, i=1,10) ]
  integer, pointer :: p(:) => a(2:10)
  ! print pointer lower bound lbound()
  print *, "p(lbound) ", lbound(p, dim=1)
  ! print pointer upper bound ubound()
  print *, "p(ubound) ", ubound(p, dim=1)
  ! check size and elements
  print *, "size(p)", size(p)

end program example1
