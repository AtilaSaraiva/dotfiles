Vim�UnDo� �O��qJ1�)#���Cך�i���]Z̐��  ]           @                       b�)�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             b�Z�     �                   �               5��                                         B      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             b�Z�    �                  5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        b�Z�    �                   �               �                 #include<iostream>   #include<vector>   #include<cmath>   #include <cstdlib>       using namespace std;           /double froben(vector<vector<double> >,int,int);   bool found(vector<int>, int);   Qvector<vector<double> > matmul(vector<vector<double> >, vector<vector<double> >);   &int indx(vector<double>, vector<int>);   double max(vector<double>);5��                                  &             �                    t                      ?!      5�_�                           ����                                                                                                                                                                                                                                                                                                                                      #          V       b�[�     �                    int m,n;       double eps;   (    cout<<"Get the values of m and n\n";       cin>>m>>n;   )    cout<<"Get the value of tolerance\n";       cin>>eps;       !    vector< vector<double> >Z(m);       for (int i=0;i<m;i++)           Z[i].resize(n);           cout<<"Get the matrix Z\n";       for(int i=0;i<m;i++)       {           for(int j=0;j<n;j++)   	        {               cin>>Z[i][j];   	        }       }5��                          P      s              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       b�[�     �                 5��                          P                     5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                V       b�[�     �   �   �              return 0;5��    �                      c                     5�_�      	              �        ����                                                                                                                                                                                                                                                                                                                                                V       b�[�     �   �   �           5��    �                      b                     5�_�      
           	   �        ����                                                                                                                                                                                                                                                                                                                                                V       b�[�     �   �   �           5��    �                      a                     5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                V       b�[�     �        ]      
int main()5��                         C                    5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                v       b�[�    �        ]      void main()5��                        H                    �                        H                    �                        H                    �                        H                    �                        H                    �                        G                    �                        H                    �                        H                    �                        H                    �                        H                    �                     	   H             	       �              	       	   H      	       	       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       b�[�     �        ]      void decompose()�        ]    5��                         R                     5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                v       b�[�    �        ]      (void decompose(vector< vector<double> >)5��       '                  j                     5�_�                       )    ����                                                                                                                                                                                                                                                                                                                                                v       b�\)    �        ]      *void decompose(vector< vector<double> > Z)5��       )                  l                     �       +                 n                    �       +                 n                    �       +                 n                    �       +                 n                    �       +              	   n             	       �       +       	       	   n      	       	       5�_�                       *    ����                                                                                                                                                                                                                                                                                                                                                v       b�\7     �        ]      5void decompose(vector< vector<double> > Z, tolerance)5��       *                  m                     �       +                 n                    �       +                 n                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       b�\A     �        ^          �        ]    5��                          �                     �                          �                     �                          �                     �                         �                     �                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       b�\D     �        _       5��                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       b�\I    �        _          m5��                         �                     �                        �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       b�]�     �        _      <void decompose(vector< vector<double> > Z, double tolerance)5��                         R                     �                         R                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       b�]�     �        _      <void decompose(vector< vector<double> > Z, double tolerance)5��                         R                     �                        T                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       b�]�     �        _      @void decompose(m,n,vector< vector<double> > Z, double tolerance)5��                         V                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       b�]�     �        _      Avoid decompose(m,n, vector< vector<double> > Z, double tolerance)5��                         T                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       b�]�     �        _      Bvoid decompose(m, n, vector< vector<double> > Z, double tolerance)5��                         R                     �                         S                     �                        R                    �                         T                     �                         S                     �                        R                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       b�]�     �        _      Fvoid decompose(int m, n, vector< vector<double> > Z, double tolerance)5��                         Y                     �                         Z                     �                        Y                    �                         [                     �                         Z                     �                        Y                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       b�]�     �                	    m = Z5��                          �      
               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       b�]�    �                 5��                          �                     5�_�                       @    ����                                                                                                                                                                                                                                                                                                                               H          @       v   @    b�c�    �        ]      Jvoid decompose(int m, int n, vector< vector<double> > Z, double tolerance)5��       @       	          �      	              5�_�                     �        ����                                                                                                                                                                                                                                                                                                                               H          @       v   @    b�)�     �              ]   #include<iostream>   #include<vector>   #include<cmath>   #include <cstdlib>       using namespace std;           /double froben(vector<vector<double> >,int,int);   bool found(vector<int>, int);   Qvector<vector<double> > matmul(vector<vector<double> >, vector<vector<double> >);   &int indx(vector<double>, vector<int>);   double max(vector<double>);       Dvoid decompose(int m, int n, vector< vector<double> > Z, double eps)   {       //To display Z       cout<<"Z=\n";       for(int i=0;i<m;i++)       {           for(int j=0;j<n;j++)   	        {               cout<<Z[i][j]<<" ";   	        }       cout<<"\n";       }           %    vector<vector<double> > Z_app(m);       for (int i=0;i<m;i++)           Z_app[i].resize(n);       !    vector<vector<double> > R(m);       for (int i=0;i<m;i++)           R[i].resize(n);               int r=min(m,n);           //Initializing U and V   !    vector<vector<double> > V(r);       for (int i=0;i<r;i++)           V[i].resize(n);   !    vector<vector<double> > U(m);       for (int i=0;i<m;i++)           U[i].resize(r);       vector<int >I;       vector<int >J;           bool conv=0;       int iter=1;       double Z_new_norm;       double Z_app_fro;           int index;           while (iter<=r && conv==0)       {               if(iter==1)   	        {               //Initialization   O            I.push_back(0);                                            //Step=1   !            for (int j=0;j<n;++j)   D                R[I[0]][j]=Z[I[0]][j];                      //Step=2                       J.push_back(0);   !            for (int j=0;j<n;j++)               {   L                if (abs(R[I[0]][j])>abs(R[I[0]][J[0]]))             //Step=3                           J[0]=j;               }           &            for(int col=0;col<n;col++)   A                V[0][col]=R[I[0]][col]/R[I[0]][J[0]];    //Step=4               !            for (int j=0;j<m;j++)               {   &                R[j][J[0]]=Z[j][J[0]];   5                U[j][0]= R[j][J[0]];       //Step=5+6               }                           int u_fro=0;   &            for(int row=0;row<m;row++)   (                u_fro+=pow(U[row][0],2);                   int v_fro=0;   &            for(int col=0;col<n;col++)   (                v_fro+=pow(V[0][col],2);                   Z_app_fro=0;       J            Z_new_norm=(Z_app_fro+(u_fro*v_fro));                 //Step 7                    vector<double > myR;   #            for(int ii=0;ii<m;++ii)   0                myR.push_back(R[ii][J[iter-1]]);                   index=indx(myR,I);                   if (index<0)               {                   conv=1;   /                cout<<"Convergence reached.\n";                   break;               }               else               {   #                I.push_back(index);               }   =                                                     //step 8       	        }           else   	        {               //step1   #            vector<double> temp(n);   %            for(int l=0;l<iter-1;++l)               {   .                for (int col1=0;col1<n;++col1)   E                    temp[col1]=temp[col1]+U[I[iter-1]][l]*V[l][col1];               }   &            for(int col=0;col<n;++col)               {   >                R[I[iter-1]][col]=Z[I[iter-1]][col]-temp[col];               }                   //step2                vector<double > myR;   #            for(int ii=0;ii<n;++ii)   0                myR.push_back(R[I[iter-1]][ii]);                   index=indx(myR,J);                   if (index<0)               {                   conv=1;   /                cout<<"Convergence reached.\n";                   break;               }               else               {   #                J.push_back(index);               }                       //step3   &            for(int col=0;col<n;++col)   I                V[iter-1][col]=R[I[iter-1]][col]/R[I[iter-1]][J[iter-1]];                           //step4   $            vector<double> temp1(n);   %            for(int l=0;l<iter-1;++l)               {   .                for (int row1=0;row1<m;++row1)   G                    temp1[row1]=temp1[row1]+V[l][J[iter-1]]*U[row1][l];               }   &            for(int row=0;row<m;++row)               {   ?                R[row][J[iter-1]]=Z[row][J[iter-1]]-temp1[row];               }                   //step5   &            for(int row=0;row<m;row++)   1                U[row][iter-1]=R[row][J[iter-1]];                       //step6   !            Z_app_fro=Z_new_norm;               double u_fro=0;                for(int r=0;r<m;r++)   +                u_fro+=pow(U[r][iter-1],2);                   double v_fro=0;                for(int c=0;c<n;c++)   +                v_fro+=pow(V[iter-1][c],2);               double sum1=0;   %            for(int j=0;j<iter-1;++j)               {   "                int vsum=0,usum=0;   0                for(int indx1=0;indx1<m;indx1++)   7                    usum+=U[indx1][j]*U[indx1][iter-1];   0                for(int indx2=0;indx2<n;indx2++)   7                    vsum+=V[j][indx2]*V[iter-1][indx2];                    sum1+=usum*vsum;               }       2            Z_new_norm=Z_app_fro+v_fro*u_fro+sum1;                       //step8   !            vector<double > myR1;   #            for(int ii=0;ii<m;++ii)   1                myR1.push_back(R[ii][J[iter-1]]);                   index=indx(myR1,I);                   if (index<0)               {                   conv=1;   /                cout<<"Convergence reached.\n";                   break;               }               else               {   #                I.push_back(index);                   }       .            double LHS=pow((v_fro*u_fro),0.5);       1            double RHS=eps*pow((Z_new_norm),0.5);                       if (LHS <= RHS)               {                   conv=1;   /                cout<<"Convergence reached.\n";               }       	        }           ++iter;           }           (    //display the low rank approximation   !    vector< vector<double> >M(m);       for (int i=0;i<m;i++)           M[i].resize(n);       M=matmul(U,V);   /    cout<<"The approximated matrix Z_app is\n";       for(int row=0;row<m;row++)       {   "        for(int col=0;col<n;col++)   	        {   #            cout<<M[row][col]<<" ";   	        }           cout<<"\n";       }       7    cout<<"Number of iterations involved "<<iter<<"\n";   }       4//Function to find the frobenius squared of a matrix   4double froben(vector<vector<double> > A,int r,int c)   {           double sum=0;               for(int i=0;i<r;i++)   	        {   $                for(int j=0;j<c;j++)   .                        sum+=pow((A[i][j]),2);   	        }           //sum=sum^0.5;       return(sum);   }       #//Function to multiply two matrices   Tvector<vector<double> > matmul(vector<vector<double> > U, vector<vector<double> > V)   {   M    vector<vector<double> > result(U.size(), vector<double>(V.at(0).size()));       0    for(int row = 0; row < result.size(); ++row)       {   :        for(int col = 0; col < result.at(0).size(); ++col)   	        {   9            for(int inner = 0; inner < V.size(); ++inner)               {   T                result.at(row).at(col) += U.at(row).at(inner) * V.at(inner).at(col);               }   	        }       }       return result;   }       &//Function to assign values to I and J   )int indx(vector<double>myR, vector<int>I)   {           bool f = false;           int ix=0;           int i = 0;           int cnt=0;   #        while(!f && i < myR.size())   	        {   +                if(abs(myR[i]) == max(myR))                   {                           ++cnt;                   if(found(I,i))                           {   3                                if (cnt<myR.size())   !                                {   3                                        myR[i] = 0;   .                                        i = 0;   !                                }   $                                else   !                                {   h                                        cout<<"All indices have been exhausted: Convergence reached.\n";   /                                        f=true;   .                                        ix=-5;       !                                }                           }                           else                           {   '                                ix = i;   )                                f = true;                       }                   }               else                   ++i;   	        }       return(ix);   }       //ismember equivalent   #bool found(vector<int> I, int elem)   {   $    for(int i = 0;i < I.size(); ++i)       {           if(I[i] == elem)               return true;       }       return false;   }       //maximum of an array   double max(vector<double> R)   {       double m = abs(R[0]);   %    for(int i = 1; i < R.size(); ++i)       {           if(abs(R[i]) > m)   	        {               m = abs(R[i]);   	        }       }       return m;   }5�5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       b�\@     �        ]       5��                          �                     �                          �                     �                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                      u           V        b�Z�     �        t       5��                          3                     �                          3                     �                          3                     5��