module my_array_type

  implicit none
  public

  type, public :: my_array_t
    integer           :: nlen = 0
    real, allocatable :: values(:)
  end type my_array_t



contains

  function my_array_allocate(nlen) result(a)

    integer, intent(in) :: nlen
    type (my_array_t)   :: a
    integer             :: i

    a%nlen = nlen
    a%values = [ (1.0*i, i = 1, nlen) ]

  end function my_array_allocate



  function my_array_allocate_from_int(nlen, ival) result(a)

    integer, intent(in)           :: nlen
    type (my_array_t)             :: a
    integer, intent(in)           :: ival
  
    a%nlen = nlen
    a%values(:) = ival
  
  end function my_array_allocate_from_int

  !----------------------------------------------------------------------------

  subroutine my_array_destroy(a)

    type (my_array_t), intent(inout) :: a

    a%nlen = 0
    if (allocated(a%values)) deallocate(a%values)

  end subroutine my_array_destroy

end module my_array_type
