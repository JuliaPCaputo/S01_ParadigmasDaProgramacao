// IDE utilizada: Falcon

#include <iostream>
#include <iomanip>
using namespace std;

int main() {
	int qtd; // quantidade de notas a serem digitadas
	float nota; // nota informada
	int i; // contador
	int soma = 0; // soma das notas
	float media; // media das notas
	
	cout << "Informe a quantidade de notas a serem digitadas: ";
	
	do{
		cin >> qtd;
	}while(qtd <= 0 || qtd > 100);
	
	for(i = 0; i < qtd; i++){
		do{
			cout << "Informe a nota: ";
			cin >> nota;
		}while(nota < 0 || nota > 10);
		
		soma += nota;
	}
	
	media = (soma * 1.0) / qtd;
	cout << fixed << setprecision(2);
	cout << "A media eh " << media << endl;
	
	if(media >= 7)
		cout << "Aprovado" << endl;
	else
		cout << "Reprovado." << endl;
	
	return 0;	
}