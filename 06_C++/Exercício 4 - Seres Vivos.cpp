// IDE utilizada: Falcon

#include <iostream>
#include <locale>
#include <string>
#include <list>
using namespace std;

class serVivo{
	protected:
		string nome;
		
	public:
		serVivo(string nome){
			this -> nome = nome;
		}
		
		virtual void apresentar(){
			cout << "Olá, meu nome é " << nome << " e eu sou um ser vivo." << endl;
		}
};

class Humano : public serVivo{
	public:
		Humano(string nome) : serVivo(nome){} // sem novas informações a serem adicionadas ao construtor
		
		void apresentar(){
			cout << "Olá, meu nome é " << nome << " e eu sou humano." << endl;
		}
};

class Elfo : public serVivo{
	public:
		Elfo(string nome) : serVivo(nome){} // sem novas informações a serem adicionadas ao construtor
		
		void apresentar(){
			cout << "Olá, meu nome é " << nome << " e eu sou um elfo." << endl;
		}
};

class Fada : public serVivo{
	public:
		Fada(string nome) : serVivo(nome){} // sem novas informações a serem adicionadas ao construtor
		
		void apresentar(){
			cout << "Olá, meu nome é " << nome << " e eu sou uma fada." << endl;
		}
};

int main(){
	setlocale(LC_ALL, "Portuguese");
	list <serVivo*> seresVivos;
	list <serVivo*>::iterator aux;
	
	serVivo* ser1 = new serVivo("Legolas");
	Humano* ser2 = new Humano("Aragorn");
	Elfo* ser3 = new Elfo("Galadriel");
	Fada* ser4 = new Fada("Malévola");
	
	seresVivos.push_back(ser1);
	seresVivos.push_back(ser2);
	seresVivos.push_back(ser3);
	seresVivos.push_back(ser4);
	
	for(aux = seresVivos.begin(); aux != seresVivos.end(); aux++){ // não compila usando for each
		serVivo* sv = *aux;
		sv -> apresentar();
	}
	
	delete ser1;
	delete ser2;
	delete ser3;
	delete ser4;
	
	return 0;
}