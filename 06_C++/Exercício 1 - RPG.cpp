// IDE utilizada: Falcon

#include <iostream>
#include <locale>
#include <string>
using namespace std;

class Personagem{
	private:
		string nome;
		int nivel;
		int dano;
		int vida;
		
	public:	
		Personagem(string nome, int nivel){
			this -> nome = nome;
			this -> nivel = nivel;
			this -> dano = 0; // o personagem começa com dano 0
			this -> vida = 100; // o personagem começa com 100 pontos de vida
			
		}
		
		string getNome(){
			return nome;
		}
		
		int getVida(){
			return vida;
		}
	
		void atacar(Personagem &alvo){
			alvo.dano += 5;
			alvo.vida -= 5;
			cout << alvo.getNome() << " foi atacado e perdeu 5 pontos de vida." << endl; 
		}
};

int main(){
	setlocale(LC_ALL, "Portuguese");
	
	Personagem personagem1("Mário", 3);
	Personagem personagem2("Bowser", 3);
	
	personagem1.atacar(personagem2);
	personagem2.atacar(personagem1);
	cout << endl;
	
	cout << personagem1.getNome() << " agora tem " << personagem1.getVida() << " de vida." << endl;
	cout << personagem2.getNome() << " agora tem " << personagem2.getVida() << " de vida." << endl;
	
	return 0;
}