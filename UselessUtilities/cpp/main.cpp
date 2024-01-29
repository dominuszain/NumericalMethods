#include <iostream>
#include <Eigen/Dense>
#include <fstream>
#include <vector>

using namespace std;
using namespace Eigen;

void saveData(string fileName, MatrixXd  matrix)
{
	const static IOFormat CSVFormat(FullPrecision, DontAlignCols, ", ", "\n");

	ofstream file(fileName);
	if (file.is_open())
	{
		file << matrix.format(CSVFormat);
		file.close();
	}
}



MatrixXd openData(string fileToOpen)
{
	vector<double> matrixEntries;
	ifstream matrixDataFile(fileToOpen);
	string matrixRowString;
	string matrixEntry;
	int matrixRowNumber = 0;


	while (getline(matrixDataFile, matrixRowString))
	{
		stringstream matrixRowStringStream(matrixRowString);
		while (getline(matrixRowStringStream, matrixEntry, ','))
		{
			matrixEntries.push_back(stod(matrixEntry));
		}
		matrixRowNumber++;
	}

	return Map<Matrix<double, Dynamic, Dynamic, RowMajor>>(matrixEntries.data(), matrixRowNumber, matrixEntries.size() / matrixRowNumber);
}



int main()
{
    MatrixXd m(2,2);
    m << 1, 2, 3, 4;

    saveData("matrix.csv", m);

    MatrixXd m2 = openData("matrix.csv");

    cout << m2 << endl;
    
    return 0;
}
