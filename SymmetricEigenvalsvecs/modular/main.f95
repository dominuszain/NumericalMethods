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
            a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, &
            a45, a46, a47, a48, a49, a50
            
            n = 50
            lda = n
            lwork = 10 * n
            
            allocate(matrix(n, n), w(n), work(lwork), a1(n), a2(n), a3(n), a4(n), a5(n), &
            a6(n), a7(n), a8(n), a9(n), a10(n), a11(n), a12(n), a13(n), a14(n), a15(n), &
            a16(n), a17(n), a18(n), a19(n), a20(n), a21(n), a22(n), a23(n), a24(n), &
            a25(n), a26(n), a27(n), a28(n), a29(n), a30(n), a31(n), a32(n), a33(n), &
            a34(n), a35(n), a36(n), a37(n), a38(n), a39(n), a40(n), a41(n), a42(n), &
            a43(n), a44(n), a45(n), a46(n), a47(n), a48(n), a49(n), a50(n))
            
            open(1, file = inpath)

            do i = 1, n
            
                read (1,*) a1(i), a2(i), a3(i), a4(i), a5(i), a6(i), a7(i), a8(i), &
                a9(i), a10(i), a11(i), a12(i), a13(i), a14(i), a15(i), a16(i), &
                a17(i), a18(i), a19(i), a20(i), a21(i), a22(i), a23(i), a24(i), &
                a25(i), a26(i), a27(i), a28(i), a29(i), a30(i), a31(i), a32(i), &
                a33(i), a34(i), a35(i), a36(i), a37(i), a38(i), a39(i), a40(i), &
                a41(i), a42(i), a43(i), a44(i), a45(i), a46(i), a47(i), a48(i), &
                a49(i), a50(i)
                
            end do

            close(1)

            do i = 1, n
            
                matrix(i, 1) = a1(i)
                matrix(i, 2) = a2(i)
                matrix(i, 3) = a3(i)
                matrix(i, 4) = a4(i)
                matrix(i, 5) = a5(i)
                matrix(i, 6) = a6(i)
                matrix(i, 7) = a7(i)
                matrix(i, 8) = a8(i)
                matrix(i, 9) = a9(i)
                matrix(i, 10) = a10(i)
                matrix(i, 11) = a11(i)
                matrix(i, 12) = a12(i)
                matrix(i, 13) = a13(i)
                matrix(i, 14) = a14(i)
                matrix(i, 15) = a15(i)
                matrix(i, 16) = a16(i)
                matrix(i, 17) = a17(i)
                matrix(i, 18) = a18(i)
                matrix(i, 19) = a19(i)
                matrix(i, 20) = a20(i)
                matrix(i, 21) = a21(i)
                matrix(i, 22) = a22(i)
                matrix(i, 23) = a23(i)
                matrix(i, 24) = a24(i)
                matrix(i, 25) = a25(i)
                matrix(i, 26) = a26(i)
                matrix(i, 27) = a27(i)
                matrix(i, 28) = a28(i)
                matrix(i, 29) = a29(i)
                matrix(i, 30) = a30(i)
                matrix(i, 31) = a31(i)
                matrix(i, 32) = a32(i)
                matrix(i, 33) = a33(i)
                matrix(i, 34) = a34(i)
                matrix(i, 35) = a35(i)
                matrix(i, 36) = a36(i)
                matrix(i, 37) = a37(i)
                matrix(i, 38) = a38(i)
                matrix(i, 39) = a39(i)
                matrix(i, 40) = a40(i)
                matrix(i, 41) = a41(i)
                matrix(i, 42) = a42(i)
                matrix(i, 43) = a43(i)
                matrix(i, 44) = a44(i)
                matrix(i, 45) = a45(i)
                matrix(i, 46) = a46(i)
                matrix(i, 47) = a47(i)
                matrix(i, 48) = a48(i)
                matrix(i, 49) = a49(i)
                matrix(i, 50) = a50(i)
                
            end do            
            
            ! eigenvalues for symmetric matrices
            
            call dsyev(jobz, uplo, n, matrix, lda, w, work, lwork, info)
            
            print *
            
            open(1, file = outpath)
                
                write (1, *) "Eigenvalues: "
                write (1, *) w

                write (1, *)
                write (1, *) "Eigenvectors: "                

                do i = 1, n
                
                    write (1, *) (matrix(i, j), j = 1, n)
                
                end do
            
            close(1)
            
            deallocate(matrix, w, work, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &
            a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, &
            a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, &
            a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50)

        end subroutine

end module eigen

program eigenvalue

    use eigen    

    implicit none

    call eig("matrix.inp", "matrix.out")

end program eigenvalue
