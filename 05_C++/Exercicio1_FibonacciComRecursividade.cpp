// IDE utilizada: Falcon

#include <iostream>
using namespace std;

int fibonacci(int n)
{
	if(n == 0){
		return 0;
	}
	else if(n == 1){
		return 1;
	}
	else{
		return fibonacci(n - 1) + fibonacci(n - 2);
	}
}

int main()
{
	int n; // numeros a serem obtidos pela sequencia
	int i = 0; // contador
	
	cout << "Informe um numero para a sequencia de Fibonacci: ";
	do{
		cin >> n;
	}while(n < 0);
	
	cout << "A sequencia com " << n << " numeros eh ";
	
	for(i = 0; i < n; i++){
		cout << fibonacci(i) << " ";
	}
	
	cout << endl;
		
	return 0;
}