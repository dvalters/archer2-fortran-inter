program assumed_shape

  implicit none

  ! The program should print out the values 0.0, 1.0, ..., 3.0
  
  real :: a(0:3)

  call initialise(a)

  print *, "Values are: ", a(:)

contains

  subroutine initialise(array)

    real, intent(inout) :: array(0:)

    ! Initialise the values to the corresponsing index

    integer           :: i

    do i = lbound(array, dim = 1), ubound(array, dim = 1)  
      ! remember these intrinsic funtions return arrays, not scalars.
      array(i) = 1.0*i
    end do 

  end subroutine initialise

end program assumed_shape
