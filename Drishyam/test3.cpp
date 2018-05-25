#include <iostream>
using namespace std;

short gcd(short a,short b){
	if(b == 0)
		return a;
	return gcd(b,a%b);
}


int main(){
	short T;
	cin >> T;
	short N;
	while(T!= 0){
		T--;
		cin >> N;
		short ans = -1,tmp,a,b;
		cin >> a >> b;
		ans = gcd(a,b);
		for(int i=0;i<N-2;i++){
			cin >> tmp;
			ans = gcd(ans,tmp);
		}
		cout << ans << endl;

	}
}