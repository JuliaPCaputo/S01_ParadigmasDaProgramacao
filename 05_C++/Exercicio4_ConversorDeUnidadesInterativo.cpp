// IDE utilizada: Falcon

#include <iostream>
using namespace std;

double celsiusParaFahrenheit(double celsius){
	return ((celsius * 9) / 5) + 32;
}

double celsiusParaKelvin(double celsius){
	return celsius + 273;
}

int main() {
	int op; // opção escolhida pelo usuário
	double celsius; // temperatura em graus Celsius
	
	do{
		cout << "1 - Converter de Celsius para Fahrenheit;" << endl;
		cout << "2 - Converter de Celsius para Kelvin;" << endl;
		cout << "3 - Sair." << endl;
		cout << "Escolha uma opcao: ";
		cin >> op;
		
		switch(op){
			case 1: cout << "Informe a temperatura em graus Celsius: ";
					cin >> celsius; 
					cout << "A temperatura eh " << celsiusParaFahrenheit(celsius) << " em graus Fahrenheit." << endl;
					cout << endl;
					break;
			case 2: cout << "Informe a temperatura em graus Celsius: ";
					cin >> celsius; 
					cout << "A temperatura eh " << celsiusParaKelvin(celsius) << " em graus Kelvin." << endl;
					cout << endl;
					break;
			case 3: break;
			default: cout << "Operacao invalida." << endl;
					cout << endl;
		}
	}while(op != 3);
	
	return 0;	
}