Vim�UnDo� 1�QK������;�N4�9�ԾP:�\�V���   *       scale_factor = 0.5            /       /   /   /    dU��    _�                             ����                                                                                                                                                                                                                                                                                                                                                             dU��     �                   �               5��                    +   
                   .      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             dU��    �         ,          5��                          J                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                           /       v   /    dU�/    �      !   ,      1    segy_filename = 'path/to/your/segy/file.segy'5��                                            �                                            �                                            �                                            �                                            �                                            �                                              5�_�                    $        ����                                                                                                                                                                                                                                                                                                                            $          )          V       dU�]    �   (   *          N    print('Updated Horizontal Grid Spacing (dx, dy):', updated_dx, updated_dy)�   '   )          <    print('Updated Vertical Grid Spacing (dz):', updated_dz)�   &   (          ?    print('Downscaled Velocity Model:\n', downscaled_vel_model)�   %   '           �   $   &          r    updated_dz, updated_dx, updated_dy = calculate_grid_spacing(segy_filename, downscaled_vel_model, scale_factor)�   #   %          L    downscaled_vel_model = downscale_velocity_model(vel_model, scale_factor)5��    #           L       N   ~      L       N       �    $           r       t   �      r       t       �    %                       B                      �    &           ?       A   C      ?       A       �    '           <       >   �      <       >       �    (           N       P   �      N       P       5�_�                          ����                                                                                                                                                                                                                                                                                                                            $          )          V       dU�t     �         -       �         ,    5��                          F                      �                          F                      �                        M                     5�_�                            ����                                                                                                                                                                                                                                                                                                                            %          *          V       dU�x     �         -      import matplot5��                         F                     5�_�      	                     ����                                                                                                                                                                                                                                                                                                                            %          *          V       dU�{     �         -      from matplot5��                         R                      �                        K                     �                        S                     �                        V                     �                        V                     �                        V                     �                        V                     �                     	   V              	       �                        ]                     �                        ]                     �                        ]                     �                        _                     �                        ]                     �       !                 g                     �       !                 g                     5�_�      
           	   *   #    ����                                                                                                                                                                                                                                                                                                                            %          *          V       dU݃    �   *   ,   .          �   *   ,   -    5��    *                      :                     �    *                     >                     �    *                    ?                    �    *                    >                    �    *                    I                    �    *                    I                    �    *                    I                    �    *                    I                    �    *                    I                    �    *                    I                    �    *                 	   I             	       �    *          	       
   I      	       
       5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                V       dU�'    �                $from skimage.transform import resize5��               $       &   !       $       &       5�_�   
                 +       ����                                                                                                                                                                                                                                                                                                                                                V       dU��    �   *   ,   .          plt.imshow(vel_model)5��    *                     T                     �    *                    T                    �    *                    U                    �    *                    U                    �    *                    U                    �    *                    U                    �    *                    V                    5�_�                    +       ����                                                                                                                                                                                                                                                                                                                                                V       dU�    �   +   -   /          �   +   -   .    5��    +                      ]                     �    +                     a                     �    +                    e                    �    +                    e                    �    +                    e                    �    +                    e                    5�_�                    %       ����                                                                                                                                                                                                                                                                                                                                                V       dU��     �   $   &          N    # downscaled_vel_model = downscale_velocity_model(vel_model, scale_factor)5��    $           N       L   �      N       L       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       dU��    �                &# from skimage.transform import resize5��               &       $   !       &       $       5�_�                    +       ����                                                                                                                                                                                                                                                                                                                                                V       dU�   	 �   *   ,   /           plt.imshow(vel_model[0,:,:])5��    *                     G                     �    *                    G                    5�_�                    $       ����                                                                                                                                                                                                                                                                                                                                                V       dU�4     �   $   &   0          �   $   &   /    5��    $                      �                     �    $                     �                     �    $                    �                    �    $                    �                    5�_�                    %       ����                                                                                                                                                                                                                                                                                                                                                V       dU�9     �   $   %              vel5��    $                      �                     5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                V       dU�<   
 �   	      /              return vel_model5��    	                                          �    	                                        5�_�                       @    ����                                                                                                                                                                                                                                                                                                                               2          @       v   @    dU�Y     �                V                                              int(vel_model.shape[2] * scale_factor)),5��                                W               5�_�                       U    ����                                                                                                                                                                                                                                                                                                                               2          @       v   @    dU�Z    �         .      U                                              int(vel_model.shape[1] * scale_factor),5��       T                                     5�_�                       U    ����                                                                                                                                                                                                                                                                                                                               2          @       v   @    dU�^    �         .      U                                              int(vel_model.shape[1] * scale_factor))5��       U                                       5�_�                    *   #    ����                                                                                                                                                                                                                                                                                                                            *   )       *   #       v   #    dU�{    �   )   +   .      +    plt.imshow(downscaled_vel_model[0,:,:])5��    )   #                                       5�_�                    %       ����                                                                                                                                                                                                                                                                                                                            *   )       *   #       v   #    dU�     �   $   &          t    # updated_dz, updated_dx, updated_dy = calculate_grid_spacing(segy_filename, downscaled_vel_model, scale_factor)5��    $           t       r   �      t       r       5�_�                    )       ����                                                                                                                                                                                                                                                                                                                            *   )       *   #       v   #    dU�    �   (   *          P    # print('Updated Horizontal Grid Spacing (dx, dy):', updated_dx, updated_dy)5��    (           P       N   �      P       N       5�_�                    *        ����                                                                                                                                                                                                                                                                                                                            *          +          V       dU�    �   )   *          $    plt.imshow(downscaled_vel_model)       plt.show()5��    )                      �      4               5�_�                            ����                                                                                                                                                                                                                                                                                                                            *          *          V       dU��     �                '    updated_dy = orig_dy / scale_factor5��                          q      (               5�_�                       7    ����                                                                                                                                                                                                                                                                                                                            )          )          V       dU��    �                o        orig_dy = segyfile.header[0][segyio.TraceField.SourceY] - segyfile.header[1][segyio.TraceField.SourceY]5��                          �      p               5�_�                    '   A    ����                                                                                                                                                                                                                                                                                                                            '   L       '   A       v   A    dU��     �   &   (   *      N    print('Updated Horizontal Grid Spacing (dx, dy):', updated_dx, updated_dy)5��    &   A                  ?                     5�_�                    &   <    ����                                                                                                                                                                                                                                                                                                                            '   L       '   A       v   A    dU��    �   %   '          >    # print('Updated Vertical Grid Spacing (dz):', updated_dz)5��    %           >       <   �      >       <       5�_�                    #       ����                                                                                                                                                                                                                                                                                                                            #   %       #          v       dU�     �   "   $   *      r    updated_dz, updated_dx, updated_dy = calculate_grid_spacing(segy_filename, downscaled_vel_model, scale_factor)5��    "                     #                     5�_�                        -    ����                                                                                                                                                                                                                                                                                                                            #   %       #          v       dU�     �         *      -    return updated_dz, updated_dx, updated_dy5��       "                  $                     5�_�      !                  "    ����                                                                                                                                                                                                                                                                                                                            #   %       #          v       dU�    �         *      "    return updated_dz, updated_dx,5��       !                  #                     5�_�       "           !           ����                                                                                                                                                                                                                                                                                                                            #   %       #          v       dU�:     �         *    5��                          @              	       �                          @                     5�_�   !   #           "           ����                                                                                                                                                                                                                                                                                                                            $   %       $          v       dU�<    �                 5��                          @                     5�_�   "   %           #           ����                                                                                                                                                                                                                                                                                                                            #   %       #          v       dU�=    �         +              �         *    5��                          @              	       �                         H                     �                        R                    �                        T                    �                        T                    �                        X                    �                        X                    �                        X                    �                        X                    �                        X                    �                        X                    �                        X                    �                     	   X             	       �              	          X      	              5�_�   #   &   $       %          ����                                                                                                                                                                                                                                                                                                                            $   %       $          v       dU�P     �         +      #        import pdf; pdf.set_trace()5��                        V                    5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                            $   %       $          v       dU�R    �         +      #        import pdf; pdb.set_trace()5��                        Q                    5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                               n                 v       dU�p     �         +      o        orig_dx = segyfile.header[0][segyio.TraceField.SourceX] - segyfile.header[1][segyio.TraceField.SourceX]5��                         v                     �                        v                    5�_�   '   )           (      s    ����                                                                                                                                                                                                                                                                                                                               n                 v       dU�s    �         +      s        orig_dx = abs(segyfile.header[0][segyio.TraceField.SourceX] - segyfile.header[1][segyio.TraceField.SourceX]5��       s                  �                     5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                               s          s       V   s    dU�    �                #        import pdb; pdb.set_trace()5��                          @      $               5�_�   )   +           *      '    ����                                                                                                                                                                                                                                                                                                                               s          s       V   s    dU��     �         *      '    updated_dz = orig_dz / scale_factor5��       '                  �                     5�_�   *   ,           +      '    ����                                                                                                                                                                                                                                                                                                                               s          s       V   s    dU��    �         *      '    updated_dx = orig_dx / scale_factor5��       '                                       5�_�   +   -           ,      .    ����                                                                                                                                                                                                                                                                                                                               s          s       V   s    dU��     �         *      .    updated_dz = orig_dz / scale_factor / 10005��       .               	   �              	       �       1                 �                    �       1                 �                    5�_�   ,   .           -      .    ����                                                                                                                                                                                                                                                                                                                               s          s       V   s    dU��    �         *      .    updated_dx = orig_dx / scale_factor / 10005��       .                  &                     �       1                 )                    �       1                 )                    5�_�   -   /           .          ����                                                                                                                                                                                                                                                                                                                               s          s       V   s    dU��    �          *          scale_factor = 0.55��                        �                    5�_�   .               /          ����                                                                                                                                                                                                                                                                                                                               s          s       V   s    dU��    �          *          scale_factor = 0.255��                        �                    �                        �                    5�_�   #           %   $          ����                                                                                                                                                                                                                                                                                                                            $   %       $          v       dU�O     �         +      #        import pdf; pdfhset_trace()5��                        W                    5�_�                    )       ����                                                                                                                                                                                                                                                                                                                            $          )          V       dU�g     �   )   *   ,          �   )   +   -          return vel_model5��    )                                           �    )                  
                 
       �    )                                         �    )                                         �    )                                         �    )                                         �    )                                         �    )                 	                 	       �    )          	       	          	       	       5��