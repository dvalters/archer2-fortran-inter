program example1

  ! Exercise (see also my_array_type.f90) to
  !
  ! 1. replace my_array_allocate(3) to a call with the overloaded
  !    my_array_t(3)
  !
  ! 2. write an additional generic procedure to allow, e.g.,
  !    a = my_array_t(nlen, iconstant) which allocates a%values(nlen)
  !    and initialises all values to scalar integer iconstant

  use my_array_type
  implicit none

  interface my_array_t
    module procedure :: my_array_allocate
    module procedure :: my_array_allocate_from_int
  end interface my_array_t

  type (my_array_t) :: a

  a = my_array_t(3, 7)

  print *, "State of a ", a%nlen, allocated(a%values), a%values(:)

  call my_array_destroy(a)

end program example1
