function Assignment2_Part1(part)
%% Function for Part 1 of Assignment 2 4700. Adam Heffernan 100977570
%Input a 1 to simulate Part 1A or a 2 to run part 1B
 
%Variables
len=30;
width=20;
v_0 = 1; 
iter=100;
sigma_map=ones(width,len);
F=zeros(1,len*width);
G=zeros(len*width,len*width);
%% Part 1A
if part == 1
for i=1:len
    for j=1:width
        Updater=j+(i-1)*width;
        
        if(i==1)%left
           
            G(Updater,Updater)=1;
            F(Updater)=1;
            
        elseif(i==len)%right
            
            G(Updater,Updater)=1;
            F(Updater)=0;
            
        elseif(j==1)%bottom
 
            G(Updater,Updater)=1;
            F(Updater)=0;
            
        elseif(j==width)%top

            G(Updater,Updater)=1;
            F(Updater)=0;
            
        else%middle
            Nyu=j+1+(i-1)*width;
            Nyd=j-1+(i-1)*width;
            Nxu=j+(i)*width;
            Nxd=j+(i-1-1)*width;

            Ryu=(sigma_map(j,i)+sigma_map(j+1,i))/2.0;
            Ryd=(sigma_map(j,i)+sigma_map(j-1,i))/2.0;
            Rxu=(sigma_map(j,i)+sigma_map(j,i+1))/2.0;
            Rxd=(sigma_map(j,i)+sigma_map(j,i-1))/2.0;
            
            
            G(Updater,Updater)=-(Ryu+Ryd+Rxu+Rxd);
            G(Updater,Nyu)=Ryu;
            G(Updater,Nyd)=Ryd;
            G(Updater,Nxu)=Rxu;
            G(Updater,Nxd)=Rxd;
            
        end
            
            
            
        
    end
end

F=F';

V=G\F;
V_1D = zeros(width,len);
for i=1:len
    for j=1:width


        Updater=j+(i-1)*width;

        V_1D(j,i)=V(Updater);

    end
end

figure(1)
surf(V_1D);
title('Figure 1 Voltage Map for Finite Difference Method Single Boundary' );
ylabel('y position');
xlabel('x position');
c=colorbar;
c.Label.String = 'V (V)';
view(0,90);

%% Part 1 B 
elseif part == 2 
for i=1:len
    for j=1:width
        Updater=j+(i-1)*width;
        
        if(i==1)%left
           
            G(Updater,Updater)=1;
            F(Updater)=1;
            
        elseif(i==len)%right
            
            G(Updater,Updater)=1;
            F(Updater)=1;
            
        elseif(j==1)%bottom
 
            G(Updater,Updater)=1;
            F(Updater)=0;
            
        elseif(j==width)%top

            G(Updater,Updater)=1;
            F(Updater)=0;
            
        else%middle
            Nyu=j+1+(i-1)*width;
            Nyd=j-1+(i-1)*width;
            Nxu=j+(i)*width;
            Nxd=j+(i-1-1)*width;

            Ryu=(sigma_map(j,i)+sigma_map(j+1,i))/2.0;
            Ryd=(sigma_map(j,i)+sigma_map(j-1,i))/2.0;
            Rxu=(sigma_map(j,i)+sigma_map(j,i+1))/2.0;
            Rxd=(sigma_map(j,i)+sigma_map(j,i-1))/2.0;
            
            
            G(Updater,Updater)=-(Ryu+Ryd+Rxu+Rxd);
            G(Updater,Nyu)=Ryu;
            G(Updater,Nyd)=Ryd;
            G(Updater,Nxu)=Rxu;
            G(Updater,Nxd)=Rxd;
            
        end
            
            
            
        
    end
end

F=F';

V=G\F;
V_2D = zeros(width,len);
for i=1:len
    for j=1:width


        Updater=j+(i-1)*width;

        V_2D(j,i)=V(Updater);

    end
end    
figure(2)
surf(V_2D);
title(' Figure 1 Voltage Map for Finite Difference Method 2 raised potentials');
ylabel('y position');
xlabel('x position');
c=colorbar;
c.Label.String = 'Volts';
view(0,90);

new_width=width-1;
new_len=(len-1)/2.0;
y_coordinates=0:1:new_width;
x_coordinates=-new_len:1:new_len;
[Xmesh,Ymesh]=meshgrid(x_coordinates,y_coordinates);
V_analytical=zeros(length(y_coordinates),length(x_coordinates));


for n=1:2:iter
    
V_analytical=V_analytical+(4.*v_0./pi).*(cosh(n.*pi.*Xmesh./new_width).*sin(n.*pi.*Ymesh./new_width)./(n.*cosh(n.*pi.*new_len./new_width)));

end
figure(3)
surf(V_analytical)
title('Figure 2 Voltage Map for Analytical Solution');
ylabel('y position');
xlabel('x position');
c=colorbar;
c.Label.String = 'Volts';
view(0,90);
else 
    return
end
end