#include <iostream>
using namespace std;

int main() {

	int T;
	cin >> T;

	int fibo[41];
	
	fibo[0] = 0;
	fibo[1] = 1;

	for (int i = 2; i < 41; i++)
		fibo[i] = fibo[i - 1] + fibo[i - 2];


	for (int i = 0; i < T; i++) {
		int n;
		cin >> n;
		if (n == 0)
			cout << "1 0\n";
		else
			cout << fibo[n - 1] << ' ' << fibo[n] << '\n';
	}

	return 0;
}