// IDE utilizada: Falcon

#include <iostream>
#include <locale>
#include <string>
using namespace std;

class Pessoa{
	private:
		string nome;
		int idade;
		
	public:
		Pessoa(string nome, int idade){
			this -> nome = nome;
			this -> idade = idade;
		}
		
		string getNome(){
			return nome;
		}
		
		int getIdade(){
			return idade;
		}
};

class Protagonista : public Pessoa{
	private:
		int nivel;
		
	public:
		Protagonista(string nome, int idade, int nivel) : Pessoa(nome, idade){
			this -> nivel = nivel;
		}
		
		int getNivel(){
			return nivel;
		}
};

class Personagem : public Pessoa{
	private:
		int rank;
		
	public:
		Personagem(string nome, int idade, int rank) : Pessoa(nome, idade){
			if(rank < 0)
				this -> rank = 0;
			else if(rank > 10)
				this -> rank = 10;
			else
				this -> rank = rank;
		}
	    
	    int getRank(){
			return rank;
		}
		
		void setRank(int rank){
			if(rank < 0)
				this -> rank = 0;
			else if(rank > 10)
				this -> rank = 10;
			else
				this -> rank = rank;
		}
};

int main(){
	setlocale(LC_ALL, "Portuguese");
	
	Protagonista protagonista("Belly", 24, 9);
	Personagem personagem("Steven", 27, 15); // para mostrar que as condições do set funcionam
	
	cout << "	PROTAGONISTA" << endl;
	cout << "Nome: " << protagonista.getNome() << endl;
	cout << "Idade: " << protagonista.getIdade() << endl;
	cout << "Nível: " << protagonista.getNivel() << endl;
	cout << endl;
	
	cout << "	PERSONAGEM" << endl;
	cout << "Nome: " << personagem.getNome() << endl;
	cout << "Idade: " << personagem.getIdade() << endl;
	cout << "Nível: " << personagem.getRank() << endl;
	cout << endl;
		
	return 0;
}