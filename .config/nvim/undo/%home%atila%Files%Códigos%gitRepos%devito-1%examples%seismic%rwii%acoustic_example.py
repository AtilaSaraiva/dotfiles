Vim�UnDo� +�3)����ݵ��lU�7u}^���]�~�   �                                   b<�    _�                            ����                                                                                                                                                                                                                                                                                                                                                             b<�    �   �   �              �   �   �              �      �          m    save_bin(-(gamma_w.data[nbl:-nbl,nbl:-nbl]-gamma_u.data[nbl:-nbl,nbl:-nbl])/(2*alpha),"rtm_rwii.bin")    �   ~   �          	# Save RWII resut �   }                 �   {   }               d.data[:] = alpha*d.data[:] �   x   z              �   w   y          9    save_bin(grad.data[nbl:-nbl,nbl:-nbl],"rtm_ac.bin")  �   t   v                �   p   r              �   n   p          ,    bnd = boundary(vel, geom, space_order)  �   k   m          4    u0= solver.forward(save=False)[1]               �   g   i          n    geom = AcquisitionGeometry(vel, rec_coordinates, src_coordinates, t0, tn, f0=f0, src_type='Ricker')       �   c   e          O    rec_coordinates[:, 0] = np.linspace(0, vel.domain_size[0], num=nreceivers) �   ^   `              �   R   T                         �   Q   S          4    dm[:,vel.grid.shape[1]//2] = 0.1                �   O   Q          N                space_order=space_order, nbl=nbl, bcs="damp")                 �   L   N          )    # smoothed vel models                �   C   E              �   A   C                 �   @   B          9                                    coordinates=bnd)     �   ?   A          D                                    nt=geometry.nt, npoint=npoints, �   >   @          H    sparse_bnd = SparseTimeFunction(name='sparse_bnd', grid=model.grid, �   =   ?              �   <   >          "            icount = icount + 1   �   :   <          1            bnd[icount, 0] = ix*model.spacing[0] �   8   :          6            bnd[icount, 1] = -(1+i)*model.spacing[1]  �   7   9          2            bnd[icount, 0] = ix*model.spacing[0]  �   5   7              for i in range(d):    �   3   5            �   1   3          3            bnd[icount, 1] = (iz)*model.spacing[1] �   0   2          5            bnd[icount, 0] = (nx+i)*model.spacing[0] �   .   0          3            bnd[icount, 1] = (iz)*model.spacing[1] �   -   /          5            bnd[icount, 0] = -(1+i)*model.spacing[0] �   )   +             #left and rigth  �   (   *              �   &   (                  �       "          	�                B        receivers (SparseTimeFunction) and their position.        �                6        Object containing the physical parameters.    �                5    If space_order = 16, 8 layers will be stored for �                2    then 1 layer needs to be stored on each edge. �                3    stencil used. For example, if space order = 2, �                3    of layers that need to be saved depends on the �                4    store the field just inside the pml. The number �                5    Calculates the grid coordinates that are used to �   
      �      %    fcopy = field.copy(order='C')    5��    
   !                  �                     �       4                  a                     �       3                  �                     �       2                  �                     �       2                  �                     �       1                  -                     �       4                  b                     �       2                  �                     �       :                  z                     �                           �                     �    &                      .                     �    (                      P                     �    )                     c                     �    -   4                  �                     �    .   2                                       �    0   4                  c                     �    1   2                  �                     �    3                      �                     �    5                     �                     �    7   0                  0                     �    8   4                  e                     �    :   0                  �                     �    <                                          �    =                                           �    >   G                  T                     �    ?   C                  �                     �    @   4                  �                     �    A                      �                     �    C                      �                     �    L                     
                     �    O   =                  �
                     �    Q   $                  ,                     �    R                      -                     �    ^                                           �    c   N                  f                     �    g   g                  �                     �    k   %                  �                     �    n   *                  �                     �    p                      �                     �    t                      p                     �    w   7                                       �    x                                           �    {                     W                     �    }                      �                     �    ~                     �                     �       i                  #                     �    �                      $                     �    �                      L                     5�_�                     q        ����                                                                                                                                                                                                                                                                                                                                                             b<�    �   p   q           5��    p                      �                     5�_�                   p        ����                                                                                                                                                                                                                                                                                                                                                             b<�     �   p   q   �       �   p   r   �      ls5��    p                      p                     �    p                      p                     5�_�                     q        ����                                                                                                                                                                                                                                                                                                                                                             b<�     �   q   r   �      acoustic_example.py   __init__.py   operators.py   wavesolver.py�   p   r        5��    q                      s              ;       �    p                      p                     5�_�                    s        ����                                                                                                                                                                                                                                                                                                                                                             b<�      �   s   t   �      zsh: unknown file attribute: v�   r   t        5��    s                      �                     �    r                      �      Q               5�_�                     s        ����                                                                                                                                                                                                                                                                                                                                                             b<��     �   s   t   �      zsh: unknown file attribute: v�   r   t        5��    s                      �                     �    r                      �      Q               5��