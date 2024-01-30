#include <iostream>
#include <Eigen/Dense>
#include <fstream>
#include <vector>
#include <string>

//using namespace std;
//using namespace Eigen;

void saveData(std::string fileName, Eigen::MatrixXd  matrix)
{
	const static Eigen::IOFormat CSVFormat(Eigen::FullPrecision, Eigen::DontAlignCols, ", ", "\n");

	std::ofstream file(fileName);
	if (file.is_open())
	{
		file << matrix.format(CSVFormat);
		file.close();
	}
}



Eigen::MatrixXd openData(std::string fileToOpen)
{
	std::vector<double> matrixEntries;
	std::ifstream matrixDataFile(fileToOpen);
	std::string matrixRowString;
	std::string matrixEntry;
	int matrixRowNumber = 0;


	while (getline(matrixDataFile, matrixRowString))
	{
		std::stringstream matrixRowStringStream(matrixRowString);
		while (std::getline(matrixRowStringStream, matrixEntry, ','))
		{
			matrixEntries.push_back(stod(matrixEntry));
		}
		matrixRowNumber++;
	}

	return Eigen::Map<Eigen::Matrix<double, Eigen::Dynamic, Eigen::Dynamic, Eigen::RowMajor>>(matrixEntries.data(), matrixRowNumber, matrixEntries.size() / matrixRowNumber);
}



int main()
{
    Eigen::MatrixXd m(2,2);
    m << 1, 2, 3, 4;

    saveData("matrix.csv", m);

    Eigen::MatrixXd m2 = openData("matrix.csv");

    std::cout << m2.determinant() << std::endl;
    
    return 0;
}
