program test_nonexistent_file

    use confort
    use iso_fortran_env
    use iso_c_binding
    use tests_common
#   include <macros>

    type(config) :: cfg
    integer :: errno
    character(len=*), parameter :: fn = "Tegoplikuniema"

    call mincf_read_file(cfg, fn, errno)

    call test(errno .ne. 0)

    call mincf_free(cfg)

end program
