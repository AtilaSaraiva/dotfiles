Vim�UnDo� �������K:)D�ql�N��M*sd}���   M   nb = 50            	       	   	   	    dX    _�                     J       ����                                                                                                                                                                                                                                                                                                                                                             d��    �   I   K          # rtm()5��    I                     �                    5�_�                    J        ����                                                                                                                                                                                                                                                                                                                                                             d��    �   I   K   L      rtm()5��    I                      �                     �    I                    �                    5�_�                    E       ����                                                                                                                                                                                                                                                                                                                                                             d�>    �   E   G   M          �   E   G   L    5��    E                      �                     �    E                  
   �              
       5�_�                    D       ����                                                                                                                                                                                                                                                                                                                                                             d��    �   C   E   M          img = Lᵀ(Data)5��    C                     ~                     5�_�                            ����                                                                                                                                                                                                                                                                                                                            B           D           V        d�o     �               M   import SeisMain as sm   import SeisProcessing as sp   import PyPlot as plt   import SeisPlot as splot   "import SeismicImagingTools as simg       	nt = 3700   
dt = 0.001   nx = 300   nz = 200   	dx = 10.0   	dz = 10.0   nb = 50   c,Vtop = simg.model(nz,nx)   c0 = Vtop*ones(nz,nx)           #wavelet = sp.Ricker(dt=dt, f0=15.0)   ,f = vcat(wavelet, zeros(nt-length(wavelet)))   
ix_s = 150   iz_s = 5        function directWaveRemovalTest()   I    Data        = simg.fd_interior(dt,nt, c, nx,nz,dx,dz,f,nb, ix_s,iz_s)   I    Data_direct = simg.fd_interior(dt,nt,c0, nx,nz,dx,dz,f,nb, ix_s,iz_s)   %    Data_ref    = Data .- Data_direct           plt.figure(1)       plotpar = Dict(:dx=>dx,                      :dy=>dt,   '                   :ylabel=>"time (s)",   %                   :xlabel=>"gx (m)",                      :fignum=>1,   $                   :cmap=>"seismic")       E    plt.subplot(131); splot.SeisPlotTX(Data;title="Data", plotpar...)   U    plt.subplot(132); splot.SeisPlotTX(Data_direct;title="First arrival", plotpar...)   O    plt.subplot(133); splot.SeisPlotTX(Data_ref;title="Difference", plotpar...)       plt.tight_layout()   end           #function plottingIrregularSpacing()   @    Data1 = simg.fd_interior(dt,nt, c, nx,nz,dx,dz,f, ix_s,iz_s)   <    Data2 = simg.fd_interior(dt,nt,c, nx,nz,dx,f, ix_s,iz_s)           plt.figure(1)       plotpar = Dict(:dx=>dx,                      :dy=>dt,   '                   :ylabel=>"time (s)",   %                   :xlabel=>"gx (m)",                      :fignum=>1,   $                   :cmap=>"seismic")       M    plt.subplot(131); splot.SeisPlotTX(Data1;title="Data dz!=dx", plotpar...)   H    plt.subplot(132); splot.SeisPlotTX(Data2;title="dz==dx", plotpar...)       plt.tight_layout()   end       function rtm()       c = ones(nz,nx) .* 1500.       c[nz÷2+1:end, :] .= 2500.   9    c0 = simg.smoothing(c, dx, dz; passes=10, stencil=10)   N    Data = simg.fd_interior(dt,nt, c, nx,nz,dx,dz,f, ix_s,iz_s,nb, save=false)       N    L, Lᵀ = simg.operator(dt,nt,c0, nx,nz,dx,dz,f, ix_s,iz_s,nb; save=false)           @time img = Lᵀ(Data)       plt.imshow(img)       return img   end       # directWaveRemovalTest()   # plottingIrregularSpacing()   img = rtm()        5�5�_�                    
       ����                                                                                                                                                                                                                                                                                                                            
          
          v       dX     �   	      M      nz = 2005��    	                    �                     5�_�                    	       ����                                                                                                                                                                                                                                                                                                                            
          
          v       dX	     �      
   M      nx = 3005��                        �                     5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                v       dX    �         M      	nt = 37005��                        �                     5�_�                  	          ����                                                                                                                                                                                                                                                                                                                                                v       dX    �         M      nb = 505��                        �                     5��