Vim�UnDo� =���{�7{�+�JC�A�:*�'ҮO��'   V       grid = simg.Grid(n=[30,30],   ?         *       *   *   *    d��U    _�                     -        ����                                                                                                                                                                                                                                                                                                                                                             d��@    �   /   1          end�   -               �   -            5��    -                      C                     �    -                      C                     �    .                   "   D              "       �    .   !                  e                     �    .   !                  e                     �    /                      f                     �    /                     f                    �    /                     f                    �    /                     f                    5�_�                    -       ����                                                                                                                                                                                                                                                                                                                                                             d��n     �   ;   =          
       end�   .   =   2       �   /   0   2    �   -   0   1       �   -   /   0    5��    -                      C                     �    -                      C                     �    .                  
   D              P      5�_�                    <   	    ����                                                                                                                                                                                                                                                                                                                                                             d��q     �   <   >   @             �   <   >   ?    5��    <                      �                     �    <                    �                    5�_�                    =       ����                                                                                                                                                                                                                                                                                                                                                             d��s     �   <   =              en5��    <                      �                     5�_�                    <        ����                                                                                                                                                                                                                                                                                                                                                             d��u     �   ;   =   ?      
       end5��    ;                     �                    5�_�                    <        ����                                                                                                                                                                                                                                                                                                                                                             d��v     �   ;   =   ?         end5��    ;                      �                     5�_�                    0        ����                                                                                                                                                                                                                                                                                                                            ;           0           V        d��x     �   /   <   ?                 if x[2] > x[1]                  key = false              else                  key = true              end              i = 3   /           while(i <= length(x) && key == true)                  if x[i] > x[i-1]                      key = false                  end; i += 1              end              return key5��    /                     \                    �    0                     n                    �    1                     �                    �    2                     �                    �    3                     �                    �    4                     �                    �    5                     �                    �    6                     �                    �    7                     �                    �    8                                         �    9                                         �    :                                         5�_�      	              0       ����                                                                                                                                                                                                                                                                                                                            0          ;                 d��~    �   /   =   ?         if x[2] > x[1]          key = false      else          key = true      end      i = 3   '   while(i <= length(x) && key == true)          if x[i] > x[i-1]              key = false          end; i += 1      end      return key   end�   0   1   ?    5��    /                     _                     �    0                     r                     �    1                     �                     �    2                     �                     �    3                     �                     �    4                     �                     �    5                     �                     �    6                     �                     �    7                     �                     �    8                                          �    9                     "                     �    :                     *                     5�_�                 	   >       ����                                                                                                                                                                                                                                                                                                                            0          ;                 d��    �   >   @   ?    5��    >                      ]                     �    >                      ]                     �    >                      ]                     5�_�   	      
          ?        ����                                                                                                                                                                                                                                                                                                                            0          ;                 d��     �   >   U   @       �   ?   @   @    5��    >                      ]              �      5�_�                    T        ����                                                                                                                                                                                                                                                                                                                            0          ;                 d��     �   S   T           5��    S                      I                     5�_�                    ?        ����                                                                                                                                                                                                                                                                                                                            S           ?           V        d��     �   >   T   T      grid = Grid(n=[50,50],               d=[5,5],               nb=10)       time = TimeAxis(nt=1000,                   dt=0.001)       sx = [100, 200, 300, 400, 500]   ;srcs = Sources(sx=sx, sz=15, time=time, grid=grid, fmax=15)       # Two layer model   $c = 1500 .* ones(Float32, grid.n...)   c[grid.nz÷2+1:end,:] .= 2600   2c0 = smoothing(c, grid=grid, stencil=10, passes=4)       dtype = eltype(c)   *d = rand(dtype, time.nt, grid.nx, srcs.ns)       (L = fdOperator(c0, grid=grid, srcs=srcs)       *m, _log = CGLS(L, d, log=true, maxIter=10)5��    >                      ]                     �    ?                     x                    �    @                     �                    �    B                      �                     �    C                     �                    �    E                      �                     �    F                                           �    H                      I                     �    I                      _                     �    J                      �                     �    K                      �                     �    M                      �                     �    N                      �                     �    P                      (                     �    R                      V                     5�_�                    ?       ����                                                                                                                                                                                                                                                                                                                            S           ?           V        d��     �   >   @   T          grid = Grid(n=[50,50],5��    >                      ]                     5�_�                    ?       ����                                                                                                                                                                                                                                                                                                                            S           ?           V        d��     �   >   @   T      grid = Grid(n=[50,50],5��    >                      ]                     5�_�                    F       ����                                                                                                                                                                                                                                                                                                                            F          F           v        d��     �   E   G   T      "    sx = [100, 200, 300, 400, 500]5��    E                     �                     5�_�                    F       ����                                                                                                                                                                                                                                                                                                                            F          F           v        d��     �   E   G   T          sx = [100]5��    E                     �                     �    E                     �                     5�_�                    A       ����                                                                                                                                                                                                                                                                                                                            A          A          v       d��    �   @   B   T                      nb=10)5��    @                    �                    5�_�                   T       ����                                                                                                                                                                                                                                                                                                                            A          A          v       d���     �   T            5��    T                      t                     5�_�                    U        ����                                                                                                                                                                                                                                                                                                                            A          A          v       d���    �   T   U           5��    T                      t                     5�_�                    S        ����                                                                                                                                                                                                                                                                                                                            A          A          v       d��     �   S   V   U          �   S   U   T    5��    S                      p                     �    S                      p                     �    S                     p                     �    T                     u                     �    T                    u                    �    T                    u                    �    T                    u                    �    T                    u                    �    T                    u                    �    T                 	   u             	       �    T          	       
   u      	       
       �    T          
          u      
              �    T                    u                    �    T                    �                    �    T                    �                    5�_�                    U       ����                                                                                                                                                                                                                                                                                                                            A          A          v       d��     �   T   V   V    5��    T                      q                     �    T                      q                     5�_�                    U        ����                                                                                                                                                                                                                                                                                                                            A          A          v       d��     �   T   U           5��    T                      q                     5�_�                    U       ����                                                                                                                                                                                                                                                                                                                            A          A          v       d��    �   T   V   V          ismonotonic(_log)5��    T                     u                     �    T                    v                    �    T                    v                    �    T                    v                    5�_�                    ?       ����                                                                                                                                                                                                                                                                                                                            A          A          v       d��U     �   >   @   V          grid = Grid(n=[50,50],5��    >                     h                     �    >                    h                    �    >                    h                    5�_�                    C       ����                                                                                                                                                                                                                                                                                                                            A          A          v       d��W     �   B   D   V          time = TimeAxis(nt=1000,5��    B                     �                     �    B                    �                    �    B                    �                    �    B                    �                    �    B                    �                    5�_�                    @        ����                                                                                                                                                                                                                                                                                                                            @          A          V       d��\     �   ?   B   V                      d=[5,5],                   nb=4)5��    ?                     }                    �    @                     �                    5�_�                    @       ����                                                                                                                                                                                                                                                                                                                            @          A                 d��`     �   ?   B   V                               d=[5,5],                           nb=4)5��    ?                     �                     �    @                     �                     5�_�                    @       ����                                                                                                                                                                                                                                                                                                                            @          A                 d��a     �   ?   B   V                            d=[5,5],                         nb=4)5��    ?                     �                     �    @                     �                     5�_�                     D       ����                                                                                                                                                                                                                                                                                                                            D          D                 d��d     �   C   F   V                          dt=0.001)    �   D   E   V    5��    C                     �                     5�_�      !               D       ����                                                                                                                                                                                                                                                                                                                            D          D                 d��e     �   C   F   V                            dt=0.001)    �   D   E   V    5��    C                     �                     5�_�       "           !   D       ����                                                                                                                                                                                                                                                                                                                            D          D                 d��g    �   C   E   V      !                        dt=0.001)5��    C                     �                     5�_�   !   #           "   G       ����                                                                                                                                                                                                                                                                                                                            D          D                 d��     �   F   H   V      ?    srcs = Sources(sx=sx, sz=15, time=time, grid=grid, fmax=15)5��    F                                          �    F                                        �    F                                        5�_�   "   $           #   L   	    ����                                                                                                                                                                                                                                                                                                                            D          D                 d��     �   K   M   V      6    c0 = smoothing(c, grid=grid, stencil=10, passes=4)5��    K   	                  �                     �    K   	                 �                    �    K   	                 �                    5�_�   #   %           $   Q       ����                                                                                                                                                                                                                                                                                                                            D          D                 d��     �   P   R   V      ,    L = fdOperator(c0, grid=grid, srcs=srcs)5��    P                     >                     �    P                    >                    �    P                    >                    5�_�   $   &           %   S       ����                                                                                                                                                                                                                                                                                                                            D          D                 d��   	 �   R   T   V      .    m, _log = CGLS(L, d, log=true, maxIter=10)5��    R                     w                     �    R                    x                    �    R                    w                    �    R                    w                    �    R                    y                    �    R                    w                    �    R                    w                    �    R                    w                    �    R                    z                    �    R                    w                    5�_�   %   '           &   ?       ����                                                                                                                                                                                                                                                                                                                            ?          ?          v       d��     �   >   @   V          grid = simg.Grid(n=[50,50],5��    >                    u                    5�_�   &   (           '   ?       ����                                                                                                                                                                                                                                                                                                                            ?          ?          v       d��     �   >   @   V          grid = simg.Grid(n=[30,50],5��    >                    x                    5�_�   '   )           (   J       ����                                                                                                                                                                                                                                                                                                                            J          J          v       d��   
 �   I   K   V      (    c = 1500 .* ones(Float32, grid.n...)5��    I                    �                    �    I                    }                    5�_�   (   *           )   ?       ����                                                                                                                                                                                                                                                                                                                            J          J          v       d��S     �   >   @   V          grid = simg.Grid(n=[30,30],5��    >                    u                    5�_�   )               *   ?       ����                                                                                                                                                                                                                                                                                                                            J          J          v       d��T    �   >   @   V          grid = simg.Grid(n=[10,30],5��    >                    x                    5�_�                    ?       ����                                                                                                                                                                                                                                                                                                                            ?          ?          v       d���     �   >   @   T          grid = Grid(n=[50,0],5��    >                     s                     5�_�   	              
   ?        ����                                                                                                                                                                                                                                                                                                                            0          ;                 d��     �   ?   @   @    �   >   A               end                                        5��    >                      ]                     �    ?                      _                     �    @                      d                     �    A                      f                     �    B                      h                     �    C                      j                     �    D                      l                     �    E                      n                     �    F                      p                     �    G                      r                     �    H                      t                     �    I                      v                     5��