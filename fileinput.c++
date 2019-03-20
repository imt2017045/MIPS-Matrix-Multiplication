#include<bits/stdc++.h>
using namespace std;
typedef unsigned long long ull;
int main()
{ freopen("inputfile.txt","r",stdin);
  freopen("bitdata.txt","w",stdout);
  for(int i=0;i<18;i++)
  {
    ull a;
    cin>>a;
    bitset<32> b(a);
    cout<<b<<endl;
  }
 for(int i=0;i<9;i++)
 { bitset<32>x(0);
   cout<<x<<endl;
 }
return 0;
}
