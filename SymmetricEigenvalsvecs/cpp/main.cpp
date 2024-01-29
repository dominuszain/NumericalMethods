#include <iostream>
#include <Eigen/Dense>
#include <Eigen/Eigenvalues>
 
int main()
{
  Eigen::MatrixXd m(2,2);
  m(0,0) = 3;
  m(1,0) = 1;
  m(0,1) = 1;
  m(1,1) = 3;

  Eigen::EigenSolver<Eigen::MatrixXd> EigenValueSolver(m);

  std::cout << EigenValueSolver.eigenvectors() << std::endl;
}
