module eigen

    implicit none

    contains

        subroutine eig(inpath, outpath)

            implicit none
            
            real, dimension(:, :), allocatable :: matrix
            character(len = 20), intent(in) :: inpath, outpath
            integer :: i, j
            character(len = 1) :: jobz = 'V'
            character(len = 1) :: uplo = 'L'
            integer :: n
            integer :: lda
            real, dimension(:), allocatable :: w
            real, dimension(:), allocatable :: work
            integer :: lwork
            integer :: info

            real, dimension(:), allocatable :: a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &
a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, &
a28, a29, a30
            
            n = 30
            lda = n
            lwork = 10 * n
            
            allocate(matrix(n, n), w(n), work(lwork), a1(n), a2(n), a3(n), a4(n), a5(n), &
            a6(n), a7(n), a8(n), a9(n), a10(n), a11(n), a12(n), a13(n), a14(n), a15(n), &
            a16(n), a17(n), a18(n), a19(n), a20(n), a21(n), a22(n), a23(n), a24(n), &
            a25(n), a26(n), a27(n), a28(n), a29(n), a30(n))
            
            open(1, file = inpath)

            do i = 1, n
            
                read (1,*) a1(i), a2(i), a3(i), a4(i), a5(i), a6(i), a7(i), a8(i), &
                a9(i), a10(i), a11(i), a12(i), a13(i), a14(i), a15(i), a16(i), &
                a17(i), a18(i), a19(i), a20(i), a21(i), a22(i), a23(i), a24(i), &
                a25(i), a26(i), a27(i), a28(i), a29(i), a30(i)
                print *, a1(i), a2(i), a3(i), a4(i), a5(i), a6(i), a7(i), a8(i), &
                a9(i), a10(i), a11(i), a12(i), a13(i), a14(i), a15(i), a16(i), &
                a17(i), a18(i), a19(i), a20(i), a21(i), a22(i), a23(i), a24(i), &
                a25(i), a26(i), a27(i), a28(i), a29(i), a30(i)
            end do

            close(1)

            do i = 1, n
            
                matrix(1, i) = a1(i)
                matrix(2, i) = a2(i)
                matrix(3, i) = a3(i)
                matrix(4, i) = a4(i)
                matrix(5, i) = a5(i)
                matrix(6, i) = a6(i)
                matrix(7, i) = a7(i)
                matrix(8, i) = a8(i)
                matrix(9, i) = a9(i)
                matrix(10, i) = a10(i)
                matrix(11, i) = a11(i)
                matrix(12, i) = a12(i)
                matrix(13, i) = a13(i)
                matrix(14, i) = a14(i)
                matrix(15, i) = a15(i)
                matrix(16, i) = a16(i)
                matrix(17, i) = a17(i)
                matrix(18, i) = a18(i)
                matrix(19, i) = a19(i)
                matrix(20, i) = a20(i)
                matrix(21, i) = a21(i)
                matrix(22, i) = a22(i)
                matrix(23, i) = a23(i)
                matrix(24, i) = a24(i)
                matrix(25, i) = a25(i)
                matrix(26, i) = a26(i)
                matrix(27, i) = a27(i)
                matrix(28, i) = a28(i)
                matrix(29, i) = a29(i)
                matrix(30, i) = a30(i)
                
            end do            
            
            ! eigenvalues for symmetric matrices
            
            call dsyev(jobz, uplo, n, matrix, lda, w, work, lwork, info)
            
            matrix = transpose(matrix)
            
            print *
            
            open(1, file = outpath)
                
                write (1, *) "Eigenvalues: "
                write (1, *) w

                write (1, *)
                write (1, *) "Eigenvectors: "                

                do i = 1, n
                
                    write (1, *) (matrix(j, i), j = 1, n)
                
                end do
            
            close(1)
            
            deallocate(matrix, w, work, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &
            a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, &
            a25, a26, a27, a28, a29, a30)

        end subroutine

end module eigen

program eigenvalue

    use eigen    

    implicit none

    call eig("matrix.inp", "matrix.out")

end program eigenvalue
