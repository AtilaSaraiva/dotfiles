Vim�UnDo� SA�Sp�8{]���fG�1-��y�A�AK�Qa/Q                     :       :   :   :    c�t�    _�                            ����                                                                                                                                                                                                                                                                                                                                                             c�Q�    �                using HDF5, Base.Threads5��        
                  
                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v        c�Q�    �               @threads for i in 1:105��               	           )       	               5�_�                          ����                                                                                                                                                                                                                                                                                                                                                 v        c�R;    �                    f["test$i"] = collect(i:i+5)5��                        U                     �                        U                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v        c�R@    �               !    f["test$i"] = collect(i:i+10)5��                        U                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v        c�R�    �   
            for k in keys(fr)5��    
                      �                      �    
                    �                     �    
                    �                     �    
                    �                     �    
                    �                     �    
                    �                     �    
                    �                     �    
                 	   �              	       �    
          	       
   �       	       
       �    
          
          �       
              �    
                    �                     5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                 v        c�R�     �                
using HDF55��        
                  
                      �        
                  
                      5�_�      	                 	    ����                                                                                                                                                                                                                                                                                                                                                 v        c�R�     �                 �              5��                                                  �                        	                   	       �                      	                 	       �               	       
          	       
       �               
                 
              �                                              �                                                �                                                �                                                �                                             �                                             �                                             �                                             �                                             �                                             �                                             �                     	                 	       �              	       
          	       
       �              
                 
              �                                             �                        *                     �                        ,                     �                        ,                     5�_�      
           	      	    ����                                                                                                                                                                                                                                                                                                                                                 v        c�R�    �                
using HDF55��                          1                      5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                 v        c�R�     �                �             5��                                                �                                                �                                              5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                 v        c�R�   	 �               addprocs5��                                               �       	                                      �       
                                      �                                             �                                             �                                             �                                             �                                             �                                             �                                             �                                             �                     	                 	       5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                 v        c�S    �               addprocs("--project")5��       	                                        �       	                                      �       	                                      �                        !                     �                                             �                                             �                                             �                                             �                     	                 	       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v        c�SX    �               @everywhere Distributed, HDF55��                         A                      �                        A                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v        c�S�    �               fr = h5open("pdata.h5", "r")5��                          �                      �                        �                     �                        �                     �                        �                     �                        �                     �                        �                     �                        �                     �                     	   �              	       �              	       
   �       	       
       �              
          �       
              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v        c�S�     �               @distributed for k in keys(fr)5��                          �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v        c�S�    �                �             5��                          &                     �                          &                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                         !       v   !    c�Tf     �                �             5��                          0                     �                          0                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                         !       v   !    c�Tg     �                @5��                          0                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                         !       v   !    c�Th    �                 	close(fr)5��                          0                     �                        1                    �                        1                    �                        1                    �                        1                    �                        1                    �                        1                    �                        1                    �                     	   1             	       �              	       
   1      	       
       �              
          1      
              5�_�                            ����                                                                                                                                                                                                                                                                                                                                         !       v   !    c�Tz    �   
            close(f)5��    
                      �                      �    
                     �                     �    
                      �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                         !       v   !    c�T�    �                �             5��                          �                      �                          �                      �                         �                     �                        �                     �                        �                     �                        �                     �                         �                     �       %                 �                     �       (                 �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v       c�p�    �               (@everywhere fr = h5open("pdata.h5", "r")5��                          �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                               
                  v        c�p�     �                 @everywhere close(fr)5��                          R                     5�_�                            ����                                                                                                                                                                                                                                                                                                                               
                  v        c�p�    �                 
 close(fr)5��                          R                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v        c�qb    �   
             close(f)�   	             end�      
          !    f["test$i"] = collect(i:i+20)�      	          for i in 1:10�                 �                f = h5open("pdata.h5", "w")5��                         Z                     �                           x                       �                         y                     �               !       #   �       !       #       �    	                     �                     �    
                  
   �              
       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       c�q�     �                    println("$k: ", read(fr[k]))5��                         A                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       c�q�    �                   println("$k: ", fr[k]))5��                         F                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                         
       V       c�r     �   
             
# close(f)�   	             # end�      
          #    # f["test$i"] = collect(i:i+20)�      	          # for i in 1:10�                 �                # f = h5open("pdata.h5", "w")5��                         Z                     �                           v                       �                         w                     �               #       !   �       #       !       �    	                     �                     �    
           
          �       
              5�_�                   	       ����                                                                                                                                                                                                                                                                                                                            	          	          v       c�r*     �      
         !    f["test$i"] = collect(i:i+20)5��                         �                      5�_�                     	       ����                                                                                                                                                                                                                                                                                                                            	          	          v       c�r3     �      
             f["test"] = collect(i:i+20)5��                         �                      5�_�      !               	       ����                                                                                                                                                                                                                                                                                                                            	          	          v       c�r=     �      
             f["test"] = 5��                         �                      �                         �                      5�_�       "           !   	       ����                                                                                                                                                                                                                                                                                                                            	          	          v       c�rA     �      
             f["test"] = 5��                         �                      5�_�   !   #           "          ����                                                                                                                                                                                                                                                                                                                            	          	          v       c�rD     �                for i in 1:105��                          w                      5�_�   "   $           #   	       ����                                                                                                                                                                                                                                                                                                                                                v       c�rE     �      	          end5��                          �                      5�_�   #   %           $          ����                                                                                                                                                                                                                                                                                                                                                v       c�rE     �      	             f["test"] = [ 5��                          w                      5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                                                v       c�rG     �      	         f["test"] = [ 5��                         �                      �                        �                     �                        �                     �                        �                     �                        �                     �                        �                     �                        �                     �                        �                     �                        �                     �                        �                     �                         �                     �                         �                     �                         �                     �       &                 �                     �       (                 �                     5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                                v       c�r�    �      	         ,f["test"] = [ j for i=1:10, j=1:10, k=1:100]5��                        �                     �                        �                     �                        �                     �                        �                     �                        �                     �                     	   �              	       �                        �                     5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                                         9       v   9    c�r�     �      	         :f["test"] = [ i==j==0 ? k : j for i=1:10, j=1:10, k=1:100]5��                         �                      5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                                         9       v   9    c�r�     �      	         9f["test"] = [ i==j=0 ? k : j for i=1:10, j=1:10, k=1:100]5��                         �                      5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                                         9       v   9    c�r�    �      	         8f["test"] = [ i==j= ? k : j for i=1:10, j=1:10, k=1:100]5��                         �                      5�_�   )   +           *          ����                                                                                                                                                                                                                                                                                                                                         6       v   6    c�s     �                   println("$k: ", fr[k])5��                        >                    �                        >                    �                        ?                    �                        ?                    �                        ?                    �                        ?                    5�_�   *   ,           +      "    ����                                                                                                                                                                                                                                                                                                                                         6       v   6    c�s     �               "s = @distributed for k in keys(fr)5��       !                  %                     5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                                                 v       c�s     �               !s = @distributed for k in keys(fr5��                                            �                                            �                                            �                                            �                        !                    �                        !                    5�_�   ,   .           -          ����                                                                                                                                                                                                                                                                                                                                                 v       c�s     �                   println("$k: ", fr["test])5��                         @                     5�_�   -   2           .          ����                                                                                                                                                                                                                                                                                                                                                 v       c�s     �                   println("$k: ", fr["test"])5��                         B                     5�_�   .   3   0       2          ����                                                                                                                                                                                                                                                                                                                                                v       c�s0     �                    println("$k: ", fr["test"][)5��                        2                    �                        2                    �                        2                    �                        2                    5�_�   2   4           3      #    ����                                                                                                                                                                                                                                                                                                                                                v       c�s6     �               $    println("$batch: ", fr["test"][)5��       #                  G                     5�_�   3   5           4      +    ����                                                                                                                                                                                                                                                                                                                               ,          +       v   +    c�s?     �      	         7f["test"] = [ i==j ? k : j for i=1:10, j=1:10, k=1:100]5��       +                 �                     5�_�   4   6           5      #    ����                                                                                                                                                                                                                                                                                                                               $          #       v   #    c�sB     �      	         6f["test"] = [ i==j ? k : j for i=1:10, j=1:5, k=1:100]5��       #                 �                     5�_�   5   7           6           ����                                                                                                                                                                                                                                                                                                                                                V       c�sN    �                (    println("$batch: ", fr["test"][:,:,)�               s = @distributed for batch=1:105��                                            �                        0                    5�_�   6   8           7      '    ����                                                                                                                                                                                                                                                                                                                                                V       c�sV    �               (    println("$slice: ", fr["test"][:,:,)5��       '                  I                     5�_�   7   9           8      (    ����                                                                                                                                                                                                                                                                                                                                                V       c�sZ    �               *    println("$slice: ", fr["test"][:,:,k])5��       '                 I                    �       '                 I                    �       '                 I                    �       '                 I                    �       '                 I                    �       '                 I                    5�_�   8   :           9           ����                                                                                                                                                                                                                                                                                                                                                 v        c�t    �               s = @distributed for slice=1:105��                                               5�_�   9               :           ����                                                                                                                                                                                                                                                                                                                                                 v        c�t�     �                  using Distributed   !addprocs(9, exeflags="--project")       #@everywhere using Distributed, HDF5       f = h5open("pdata.h5", "w")       5f["test"] = [ i==j ? k : j for i=1:5, j=1:5, k=1:100]   close(f)       -# It will error saying that the file is close   fr = h5open("pdata.h5", "r")   for slice=1:10   .    println("$slice: ", fr["test"][:,:,slice])   end   fetch(s)       	close(fr)5�5�_�   .   1   /   2   0          ����                                                                                                                                                                                                                                                                                                                                                v       c�s%     �                   println("$k ", fr["test"][)5��                         3                     5�_�   0               1          ����                                                                                                                                                                                                                                                                                                                                                v       c�s&     �                   println("$k", fr["test"][)5��                         3                     5�_�   .           0   /          ����                                                                                                                                                                                                                                                                                                                                                v       c�s#     �                   println( fr["test"][)5��                         0                     5�_�                            ����                                                                                                                                                                                                                                                                                                                               
                 V   
    c�r     �              5��                          w       4               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v        c�R.    �               "    f["test$i"] = collect(i:i+100)5��                        U                     �                        U                     5��