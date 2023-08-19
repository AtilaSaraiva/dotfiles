Vim�UnDo� ���w[���L�Ul���H��L��M  )           *                           b~��   	 _�                    1        ����                            #                                              �                                                                                                                                             {                                                                                             1         q          V       buQ:     �  0  1       A       @property       def comm(self):   B        """The MPI communicator inherited from the distributor."""   %        return self._distributor.comm       "    def is_distributed(self, dim):           """   R        True if `dim` is a distributed Dimension for this CartesianDiscretization,           False otherwise.           """   A        return any(dim is d for d in self.distributor.dimensions)           @cached_property       def _arg_names(self):           ret = []   .        ret.append(self.time_dim.spacing.name)   5        ret.extend([i.name for i in self.origin_map])   "        for i in self.spacing_map:               try:   "                ret.append(i.name)   "            except AttributeError:   E                # E.g., {n*h_x: v} (the case of ConditionalDimension)   <                ret.extend([a.name for a in i.free_symbols])           return tuple(ret)           def _arg_defaults(self):   D        """A map of default argument values defined by this Grid."""           args = ReducerMap()               # Dimensions size   /        for k, v in self.dimension_map.items():   <            args.update(k._arg_defaults(_min=0, size=v.loc))               # Dimensions spacing   E        args.update({k.name: v for k, v in self.spacing_map.items()})               # Grid origin   D        args.update({k.name: v for k, v in self.origin_map.items()})               # MPI-related objects   (        if self.distributor.is_parallel:   *            distributor = self.distributor   J            args[distributor._obj_comm.name] = distributor._obj_comm.value   Z            args[distributor._obj_neighborhood.name] = distributor._obj_neighborhood.value               return args       $    def _arg_values(self, **kwargs):   +        values = dict(self._arg_defaults())       2        # Override spacing and origin if necessary   M        values.update({i: kwargs[i] for i in self._arg_names if i in kwargs})               return values           def __getstate__(self):   $        state = self.__dict__.copy()   W        # A Distributor wraps an MPI communicator, which can't and shouldn't be pickled   !        state.pop('_distributor')           return state       "    def __setstate__(self, state):   "        for k, v in state.items():               setattr(self, k, v)   S        self._distributor = Distributor(self.shape, self.dimensions, MPI.COMM_SELF)5��    0      A               �*      �              5�_�                    B        ����                            #                                              �                                                                                                                                             :                                                                                             1         1          V       buQD     �   B   �  �    �   B   C  �    5��    B               A       �              �      5�_�                    B       ����                            #                                              �                                                                                                                                             {                                                                                             r         r          V       buQE    �   B   D  (    5��    B                      �              	       �    B                     �                    �    B                      �                     5�_�                    �       ����                            #                                              �                                                                                                                                             |                                                                                                                               buR�    �   �   �  )              print(topology)5��    �                    p                     5�_�                    �        ����                            #                                              �                                                                                                                                             |                                                                                                                               buR�    �   �   �  )    �   �   �  )    5��    �                      �                      5�_�                    �       ����                            #                                              �                                                                                                                                             }                                                                                                                               buS     �   �   �  *              print(shape)5��    �                     p                      �    �                    v                     5�_�                    �        ����                            #                                              �                                                                                                                                             }                                                                                              �          �          v       buS	     �   �   �  *    �   �   �  *    5��    �                      �                      5�_�      	              �       ����                            #                                              �                                                                                                                                             ~                                                                                              �          �          v       buS
    �   �   �                  print(shape)5��    �                      �                      5�_�      
           	   �       ����                            #                                              �                                                                                                                                             }                                                                                              �          �          v       buS<     �   �   �                  print('shape',shape)5��    �                      �                      5�_�   	              
   �       ����                            #                                              �                                                                                                                                             |                                                                                              �          �          v       buS=    �   �   �                  print('shape',shape)5��    �                      b                      5�_�   
                        ����                            #                                              �                                                                                                                                             {                                                                                             �   G      �   K       v   K    buS�     �                 from abc import ABC5��                                                �                                                5�_�                    -        ����                            #                                              �                                                                                                                                             {                                                                                             �   G      �   K       v   K    buS�     �   ,   .           5��    ,                      �                     �    ,                      �                     5�_�                    2        ����                            #                                              �                                                                                                                                             {                                                                                             �   G      �   K       v   K    buS�     �   1   3           5��    1                      %                     �    1                      %                     5�_�                    7        ����                            #                                              �                                                                                                                                             {                                                                                             �   G      �   K       v   K    buS�    �   6   8           5��    6                      �                     �    6                      �                     5�_�                   �       ����                                      t                     �                                                                                                                                                          �                                                                                                              W       v   W    b~�     �  �  �                  super().__init__()5��    �                    �4                    5�_�                   �       ����                                      t                     �                                                                                                                                                          �                                                                                                              W       v   W    b~�    �  �  �                  # super().__init__()5��    �                    �4                    5�_�                   �       ����                                      t                     �                                                                                                                                                          �                                                                                                              W       v   W    b~��     �  �  �                  super().__init__()5��    �                    �4                    5�_�                   �       ����                                      t                     �                                                                                                                                                          �                                                                                                              W       v   W    b~��     �  �  �                  # super().__init__()5��    �                    �4                    5�_�                   �       ����                                      t                     �                                                                                                                                                          �                                                                                                              W       v   W    b~��     �  �  �                  super().__init__()5��    �                    �4                    5�_�                   �       ����                                      t                     �                                                                                                                                                          �                                                                                                              W       v   W    b~��     �  �  �                  # super().__init__()5��    �                    �4                    5�_�                  �       ����                                      t                     �                                                                                                                                                          �                                                                                                              W       v   W    b~��     �  �  �                  super().__init__()5��    �                    �4                    5�_�                         ����                                      t                     �                                                                                                                                                          �                                                                                                              W       v   W    b~�      �      (    �      (    5��                         ;J              K       5�_�                      (    ����                                      t                     �                                                                                                                                                          �                                                                                                              W       v   W    b~�(     �      )      J        self._distributor = Distributor(shape, dimensions, comm, topology)5��      (                  cJ                     �      (                 cJ                    �      ,                 gJ                    5�_�                      5    ����                                      t                     �                                                                                                                                                          �                                                                                                              W       v   W    b~�6     �      )      P        self._distributor = Distributor(self._shape, dimensions, comm, topology)5��      5                  pJ                     �      :                 uJ                    5�_�                   �   *    ����                                      t                     �                                                                                                                                                          �                                                                                                              W       v   W    b~�\     �  �  �  )      5    def __subdomain_finalize__(self, grid, **kwargs):5��    �  *                  r@                     �    �  +                 s@                    �    �  +                 s@                    �    �  +                 s@                    �    �  0                 x@                    �    �  0                 x@                    �    �  0                 x@                    �    �  0                 x@                    5�_�                   �   4    ����                                      t                     �                                                                                                                                                          �                                                                                                              W       v   W    b~�_     �  �  �  )      ?    def __subdomain_finalize__(self, grid, comm=None **kwargs):5��    �  4                  |@                     5�_�                   �   5    ����                                      t                     �                                                                                                                                                          �                                                                                                              W       v   W    b~�x     �  �  �  )      @    def __subdomain_finalize__(self, grid, comm=None, **kwargs):5��    �  5                  }@                     �    �  5                 }@                    �    �  6                 ~@                    �    �  6                 ~@                    �    �  6              
   ~@             
       �    �  ?                 �@                    �    �  ?                 �@                    �    �  ?                 �@                    �    �  ?                 �@                    5�_�                   �   C    ����                                      t                     �                                                                                                                                                          �                                                                                                              W       v   W    b~�|    �  �  �  )      N    def __subdomain_finalize__(self, grid, comm=None, topology=None **kwargs):5��    �  C                  �@                     5�_�                    l        ����                                      t                     �                                                                                                                                                          �                                                                                              p         l           V       b~��     �  k  l                  @property       def distributor(self):   S        """The Distributor used for MPI-decomposing the CartesianDiscretization."""            return self._distributor5��    k                     �2      �               5�_�                      B       ����                                      o                     �                                                                                                                                                          �                                                                                              l         l           V       b~��   	 �   B   H  $    �   B   C  $    5��    B                      �              �       5�_�                   �       ����                                      t                     �                                                                                                                                                          �                                                                                               '          '          V       b~��     �  �  �                  super().__init__()5��    �                    �4                    5�_�                   �       ����                                      t                     �                                                                                                                                                          �                                                                                                              W       v   W    b~��     �  �  �        5��    �                     �4                     5��