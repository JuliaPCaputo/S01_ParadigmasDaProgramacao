// IDE utilizada: Falcon

#include <iostream>
using namespace std;

float somarArray(float arr[], int tamanho){
	int i; // contador
	float soma = 0; //soma dos valores
	
	for(i = 0; i < tamanho; i++){
		soma += arr[i];
	}
	
	return soma;
}

int main() {
	int tamanho; // tamanho do vetor
	float arr[100]; // array com os números
	int i; // contador
	
	cout << "Informe a quantidade de valores a serem somados: ";
	
	do{
		cin >> tamanho;
	}while(tamanho < 0 || tamanho > 100);
	
	cout << "Informe os valores a serem somados: ";
	
	for(i = 0; i < tamanho; i++){
		cin >> arr[i];
	}
	
	cout << "A soma eh " << somarArray(arr, tamanho) << endl;
	
	return 0;
}