Vim�UnDo� ��f��C�I�4y��ѴG���ױp����      <    pdftk $(file).pdf $(file)_protected.pdf user_pw ufba2022            #       #   #   #    dҴg    _�                            ����                                                                                                                                                                                                                                                                                                                               <                 v       c�    �               N    pdftk .pdf output bachelor_diploma_original_protected.pdf user_pw ufba20225��              .                 .              �       
                                      �       
                                      �                        &                     �                         (                      5�_�                           ����                                                                                                                                                                                                                                                                                                                               <                 v       c�9     �               )    pdftk $(basename $f) user_pw ufba20225��                         (                      �                         (                      5�_�                           ����                                                                                                                                                                                                                                                                                                                               <                 v       c�;     �               )    pdftk $(basename $f) user_pw ufba20225��                         '                      5�_�                           ����                                                                                                                                                                                                                                                                                                                               <                 v       c�<     �               *    pdftk $(basename $f ) user_pw ufba20225��                         (                      �                        )                     5�_�                           ����                                                                                                                                                                                                                                                                                                                               <                 v       c�b     �                   �             5��                                                �                       	                  	       �                                             �                                             �                                             �                     	                 	       5�_�                           ����                                                                                                                                                                                                                                                                                                                               <                 v       c�i     �                   basename 5��                                               �                                             �                                             �                                             �                                             �                                             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       c�x     �                   file=$(base�             5��                                               5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                v       c�y     �                   file=$(basename $f .pdf5��                         +                      5�_�      
           	      
    ����                                                                                                                                                                                                                                                                                                                                         
       v   
    c�|     �               .    pdftk $(basename $f .pdf) user_pw ufba20225��       
                 7                     5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                         
       v   
    c�     �                    pdftk $file user_pw ufba20225��                         <                      �                        =                     �                        <                     �                        =                     �                        =                     �                        B                     �                        B                     �                        G                     �                        G                     �                        F                     �                        B                     5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                         
       v   
    cϒ     �               8    pdftk $file.pdf $file_protected.pdf user_pw ufba20225��                         8                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                         
       v   
    cϔ     �               9    pdftk $(file.pdf $file_protected.pdf user_pw ufba20225��                         =                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                         
       v   
    cϘ     �               :    pdftk $(file).pdf $file_protected.pdf user_pw ufba20225��                         D                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                         
       v   
    cϚ    �               ;    pdftk $(file).pdf $(file_protected.pdf user_pw ufba20225��                         I                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c��    �                for f in $1; do5��        	                 	                     �        	                  	                      5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             c�    �                for f in ; do5��        	                  	                      �        	                 	                     �        	                 	                     5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             c�:     �                <    pdftk $(file).pdf $(file)_protected.pdf user_pw ufba20225��               <       =   -       <       =       5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             c�;    �                   �             5��                          -                      �                         1                      �       	                 6                     5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             c�G     �                   echo $(file)5��       
                  7                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�H    �                   echo $file)5��                         ;                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�P     �                =    #pdftk $(file).pdf $(file)_protected.pdf user_pw ufba20225��               =       <   <       =       <       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�Q     �                    echo $file5��                          -                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�U     �               <    pdftk $(file).pdf $(file)_protected.pdf user_pw ufba20225��                         8                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�V     �               ;    pdftk $file).pdf $(file)_protected.pdf user_pw ufba20225��                         <                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�Y     �               :    pdftk $file.pdf $(file)_protected.pdf user_pw ufba20225��                         G                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�Z   	 �               9    pdftk $file.pdf $(file_protected.pdf user_pw ufba20225��                         B                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�{     �               8    pdftk $file.pdf $file_protected.pdf user_pw ufba20225��                         F                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�}    �               9    pdftk $file.pdf $file}_protected.pdf user_pw ufba20225��                         B                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             cИ    �               :    pdftk $file.pdf ${file}_protected.pdf user_pw ufba20225��                         A                      5�_�      !                 A    ����                                                                                                                                                                                                                                                                                                                                                             dҴ)    �               A    pdftk $file.pdf output ${file}_protected.pdf user_pw ufba20225��       9                  f                      5�_�      #           !      9    ����                                                                                                                                                                                                                                                                                                                                                             dҴY    �               9    pdftk $file.pdf output ${file}_protected.pdf user_pw �             5��       9                  f                      �       9                  f                      5�_�   !       "       #      9    ����                                                                                                                                                                                                                                                                                                                                                             dҴf    �               9    pdftk $file.pdf output ${file}_protected.pdf user_pw �             5��       9               
   f               
       5�_�   !           #   "      9    ����                                                                                                                                                                                                                                                                                                                                                             dҴc     �             �               _    pdftk $file.pdf output ${file}_protected.pdf user_pw git@github.com:GeoSymCodes/devito.git5��       9               &   f               &       5�_�             !          8    ����                                                                                                                                                                                                                                                                                                                                                             dҴM     �             �               ?    pdftk $file.pdf output ${file}_protected.pdf user_pw MPI4PY5��       9                  f                      5�_�                        9    ����                                                                                                                                                                                                                                                                                                                                                             dҴK     �             �               ^    pdftk $file.pdf output ${file}_protected.pdf user_pw git@github.com:GeoSymCodes/devito.git5��       9               %   f               %       5��