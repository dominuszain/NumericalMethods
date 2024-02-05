#include <iostream>
#include <Eigen/Dense>
#include <fstream>
#include <vector>
#include <string>

using namespace std;
using namespace Eigen;

void SaveTxt(string fileName, MatrixXd  matrix)
{
	ofstream file(fileName);
	if (file.is_open())
	{
		file << matrix;
		file.close();
	}
}



MatrixXd OpenTxt(string fileToOpen)
{
	vector<double> matrixEntries;
	ifstream matrixDataFile(fileToOpen);
	string matrixRowString;
	string matrixEntry;
	int matrixRowNumber = 0;


	while (getline(matrixDataFile, matrixRowString))
	{
		stringstream matrixRowStringStream(matrixRowString);
		while (getline(matrixRowStringStream, matrixEntry, ' '))
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
    m << 1, 5, 8, 4;

    saveData("matrix.out", m);

    MatrixXd m2 = openData("matrix.out");

    cout << m2.inverse() << endl;
    
    cout << m2 * m2.inverse() << endl;
    
    return 0;
}
