Vim�UnDo� d7�>S}�y��ߍ�/�C���Ȑ'X��� �   Z   7println("Epoch = $epoch : Training loss = $train_loss")   Z   	      %       %   %   %    c��J    _�                    U        ����                                                                                                                                                                                                                                                                                                                            U          \          V       c���     �   [   ]          end�   Z   \          ;    println("Epoch = $epoch : Training loss = $train_loss")�   Y   [          #    push!(loss_history, train_loss)�   X   Z          '    train_loss = loss(X_train, y_train)�   W   Y              # print report�   V   X          /    train!(loss, ps, [(X_train, y_train)], opt)�   U   W              # train model�   T   V          for epoch in 1:epochs5��    T                     �                    �    U                                         �    V           /       1   "      /       1       �    W                     T                    �    X           '       )   i      '       )       �    Y           #       %   �      #       %       �    Z           ;       =   �      ;       =       �    [                     �                    5�_�                    T        ����                                                                                                                                                                                                                                                                                                                            U          \          V       c���     �   T   V   �    �   T   U   �    5��    T                      �              2       5�_�                    U       ����                                                                                                                                                                                                                                                                                                                            V          ]          V       c���     �   T   V   �      1    # train!(loss, ps, [(X_train, y_train)], opt)5��    T                      �                     5�_�                    U       ����                                                                                                                                                                                                                                                                                                                            V          ]          V       c���     �   T   V   �      -# train!(loss, ps, [(X_train, y_train)], opt)5�5�_�                    U       ����                                                                                                                                                                                                                                                                                                                            V          ]          V       c���     �   T   V          -# train!(loss, ps, [(X_train, y_train)], opt)5��    T           -       +   �      -       +       5�_�                    U       ����                                                                                                                                                                                                                                                                                                                            V          ]          V       c���     �   U   W   �    �   U   V   �    5��    U                      "              *       5�_�      	              V       ����                                                                                                                                                                                                                                                                                                                            W          ^          V       c���     �   U   W          )    # train_loss = loss(X_train, y_train)5��    U           )       '   "      )       '       5�_�      
           	   V       ����                                                                                                                                                                                                                                                                                                                            W          ^          V       c���    �   U   W   �      '    train_loss = loss(X_train, y_train)5��    U                      "                     5�_�   	              
   I       ����                                                                                                                                                                                                                                                                                                                            W          ^          V       c��     �   H   J   �      ps = params(model)5��    H                     �                     �    H                    �                    5�_�   
                 I       ����                                                                                                                                                                                                                                                                                                                            I   	       I          v       c��8    �   H   J   �      ps = Flux.params(model)5��    H                     �                     5�_�                    I       ����                                                                                                                                                                                                                                                                                                                            I   	       I          v       c��H    �   H   J   �      ps = params(model)5��    H                     �                     �    H                    �                    �    H                    �                    5�_�                    V   	    ����                                                                                                                                                                                                                                                                                                                            I   	       I          v       c��    �   V   Y   �       �   V   X   �    5��    V                      K                     �    V                      K                     �    W                      L                     �    W                     L                    �    W                     L                    �    W                     L                    �    W                    R                    �    W                    R                    �    W                    R                    �    W                    R                    �    W                    R                    �    W                    R                    �    W                 	   R             	       �    W          	       
   R      	       
       �    W          
          R      
              5�_�                    X       ����                                                                                                                                                                                                                                                                                                                            I   	       I          v       c��     �   X   Z   �    �   X   Y   �    5��    X                      ^              >       5�_�                    Y       ����                                                                                                                                                                                                                                                                                                                            I   	       I          v       c��     �   X   Z   �      =    # println("Epoch = $epoch : Training loss = $train_loss")5��    X                      ^                     5�_�                    Y       ����                                                                                                                                                                                                                                                                                                                            I   	       I          v       c��     �   X   Z          9# println("Epoch = $epoch : Training loss = $train_loss")5��    X           9       7   ^      9       7       5�_�                    X       ����                                                                                                                                                                                                                                                                                                                            I   	       I          v       c��    �   X   Z   �       �   X   Z   �    5��    X                      ^                     �    X                      ^                     �    X                     ^                    �    X                     ^                    �    X                     ^                    �    X                    c                    5�_�                    Y        ����                                                                                                                                                                                                                                                                                                                            Y           Z   7       v   9    c��s     �   Y   [          7println("Epoch = $epoch : Training loss = $train_loss")�   X   Z          	epoch = 15��    X           	          ^      	              �    Y           7       9   j      7       9       5�_�                    X        ����                                                                                                                                                                                                                                                                                                                            Y           Z   7       v   9    c��t   
 �   W   Y          print(train_loss)5��    W                     L                    5�_�                   X        ����                                                                                                                                                                                                                                                                                                                            Y           Z   7       v   9    c���     �   W   Y          # print(train_loss)5��    W                     L                    5�_�                    X        ����                                                                                                                                                                                                                                                                                                                            Y           Z   7       v   9    c���    �   X   Z   �    �   X   Y   �    5��    X                      ^                     5�_�                    Y        ����                                                                                                                                                                                                                                                                                                                            Z           [   7       v   9    c���     �   X   Y          print(train_loss)5��    X                      ^                     5�_�                    X        ����                                                                                                                                                                                                                                                                                                                            Y           Z   7       v   9    c���     �   W   X          print(train_loss)5��    W                      L                     5�_�                    X        ����                                                                                                                                                                                                                                                                                                                            X           Y   7       v   9    c���     �   W   Y          # epoch = 15��    W                  	   L             	       5�_�                    Y        ����                                                                                                                                                                                                                                                                                                                            X           Y   7       v   9    c���     �   X   Z          9# println("Epoch = $epoch : Training loss = $train_loss")5��    X           9       7   V      9       7       5�_�                   Z        ����                                                                                                                                                                                                                                                                                                                            Z           �           V        c��    �   Y   Z       .   # for epoch in 1:epochs       # # train model   1    # train!(loss, ps, [(X_train, y_train)], opt)       # # print report   )    # train_loss = loss(X_train, y_train)   %    # push!(loss_history, train_loss)   =    # println("Epoch = $epoch : Training loss = $train_loss")   # end       # y_hat_raw = model(X_test)       !# y_hat = onecold(y_hat_raw) .- 1       # y = y_test_raw       # mean(y_hat .== y)       1# check = [y_hat[i] == y[i] for i in 1:length(y)]       # index = collect(1:length(y))       (# check_display = [index y_hat y check];       &# df_check = DataFrame(check_display);       # show(df_check, allrows=true)       # # view misclassifications       # misclass_index = 9       # img = X_test_raw[:,:,9]       # colorview(Gray,img')       # y[misclass_index]       # y_hat[misclass_index]       # # plot loss       # gr(size = (600, 600))       # ps        5��    Y       .               �      �              5�_�                     Y        ����                                                                                                                                                                                                                                                                                                                            Z           Z           V        c��.     �   Y            �   Y            5��    Y                      �              8       5�_�      !               Z   	    ����                                                                                                                                                                                                                                                                                                                            Z   	       Z   4       v   4    c��2     �   Y              7println("Epoch = $epoch : Training loss = $train_loss")5��    Y   	       ,          �      ,              �    Y   	                 �                    �    Y                    �                    �    Y   	                 �                    �    Y   	                 �                    �    Y                    �                    �    Y                    �                    �    Y                    �                    �    Y                    �                    �    Y                    �                    �    Y                    �                    �    Y                    �                    �    Y                    �                    �    Y                    �                    �    Y                    �                    �    Y                    �                    �    Y                 	   �             	       �    Y          	       
   �      	       
       �    Y          
       
   �      
       
       5�_�       "           !   Z       ����                                                                                                                                                                                                                                                                                                                            Z   	       Z   4       v   4    c��<     �   Y              println("Type of train_loss")5��    Y                     �                     �    Y                    �                    5�_�   !   #           "   Z       ����                                                                                                                                                                                                                                                                                                                            Z   	       Z   4       v   4    c��?     �   Y              println("Type of $train_loss")5��    Y                     �                     5�_�   "   $           #   Z       ����                                                                                                                                                                                                                                                                                                                            Z   	       Z   4       v   4    c��C     �   Y              println("Type of $train_loss,")5��    Y                     �                     5�_�   #   %           $   Z       ����                                                                                                                                                                                                                                                                                                                            Z          Z          v       c��H     �   Y              println("Type of train_loss,")5��    Y                     �                     5�_�   $               %   Z       ����                                                                                                                                                                                                                                                                                                                            Z          Z          v       c��I    �   Y              println("Type of train_loss, ")5��    Y                     �                     �    Y                    �                    �    Y                    �                    �    Y                    �                    �    Y                    �                    �    Y                    �                    �    Y                 	   �             	       �    Y   &                 �                    �    Y   &                 �                    �    Y   &                 �                    �    Y   &                 �                    �    Y   &                 �                    �    Y   &                 �                    �    Y   &                 �                    �    Y   ,                 �                    �    Y   &                 �                    �    Y   &              	   �             	       �    Y   &       	       
   �      	       
       �    Y   &       
          �      
              5�_�                    Z        ����                                                                                                                                                                                                                                                                                                                            Z           Z           V        c��     �   Y   �        5��    Y       .               �      �              5�_�                   U        ����                                                                                                                                                                                                                                                                                                                            Y           Z   7       v   9    c��v     �   T   V          -# train!(loss, ps, [(X_train, y_train)], opt)5��    T           +       -   �      +       -       5�_�                    V        ����                                                                                                                                                                                                                                                                                                                            [           b          v       c��w     �   U   W          %# train_loss = loss(X_train, y_train)5��    U           #       %   )      #       %       5�_�                     [        ����                                                                                                                                                                                                                                                                                                                            d           i           v       c��y   	 �   Z   \          for epoch in 1:epochs�   [   ]              # train model�   \   ^          /    train!(loss, ps, [(X_train, y_train)], opt)�   ]   _              # print report�   ^   `          '    train_loss = loss(X_train, y_train)�   _   a          #    push!(loss_history, train_loss)�   `   b          ;    println("Epoch = $epoch : Training loss = $train_loss")�   a   c          end5��    Z                     �                    �    [                     �                    �    \           1       /   �      1       /       �    ]                                         �    ^           )       '         )       '       �    _           %       #   =      %       #       �    `           =       ;   a      =       ;       �    a                     �                    5�_�                     U       ����                                                                                                                                                                                                                                                                                                                                                             c���    �   T   V          # for epoch in 1:epochs5��    T                     �                    5��