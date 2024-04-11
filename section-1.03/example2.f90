program example2

  implicit none

  ! interface
  !   function array_size(a) result(isize)
  !     real, dimension(:), intent(in) :: a
  !     integer                        :: isize
  !   end function array_size
  ! end interface

  abstract interface
    function if_func(a) result(isize)
      real, dimension(:), intent(in) :: a
      integer          :: isize
    end function if_func
  end interface

  !procedure (integer) :: array_size
  procedure (if_func) :: array_size
  real :: a(13)
  real :: b(2,2) 
  ! compiler now can complain if rank is wrong
  ! because of our interface

  print *, "size of a is: ", array_size(a)

end program example2
