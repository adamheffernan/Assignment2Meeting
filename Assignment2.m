%% Assignment 2 ELEC 4700 Finite Difference Method
% Adam Heffernan 100977570
% Completed February 22nd 2020

%%  
% In this section we model two simple cases. a 1D and 2D case using
% Laplaces finite difference method in Matrix form as to make it easier to
% add boxes into the simulation. The dimmensions given in the problem
% states a 3/2 Length v. Width, as such I used 30 and 20 as my mesh sizes
% for the length and width of respectively for all problems solved in the
% scripts below. The initial Voltage at the boundary conditions is set to 
% 1V for all cases modeled below. 
%
%
%
%%
%% Part 1A
Assignment2_Part1(1)
%%
% Figure 1 Above shows the 1D potential case where $X = V_0$ while $X = 0$ 
% and the potential as we approach all 3 other sides goes to 0. That is $X = 0$
% at $X = length$, $Y=0$ while $Y = 0$ and $Y = Width$. In this case the
% voltage is constant in the Y direction at 0V and rises linearly to 1V at
% between $X = 0$ and $X = length$
%
%
%%
%% Part 1B
Assignment2_Part1(2)
%%
% Figure 2 above shows the 1D potential case where $X = V_0$ while 
% $X = 0$ and $X = length$ and the potential as we approach the Y boundaries 
% goes to 0. That is $Y= 0V$ while $Y = 0$ and $Y = Width$. In this case the
% voltage is constant in the Y direction at 0V and rises linearly to 1V at
% between $X = 0$ and $X = length$. Figure 2 above shows the analytical
% solution to the differential equation where the boundary conditions in
% the X direction approach $V_0$ in this case our $V_0 = 1 V$. By looking
% at the corresponding matrix and figures we can see that these two
% solutions are closely approaching eachother. This makes sense as the
% analytical solution will require infinite iterations in order to truly
% represent the numerical solution to this equation. 
%
%%
%% Part 2A
Assignment2_Part2(1)
%%
% In Part 2 we added the bottlenecks created in Assignment 1. The length
% and width of the mesh grid was kept the same as in Part 1. Two boxes with
% low conductivity were created with a conductivity value of $\sigma = 1e^-2$. The
% rest of the mesh grid was populated with a conductivity value of $\sigma
% = 1$ The first figure shows the potential voltage lines for this mesh
% grid. The low conducivity zone is inversely proportional to a high
% resistance area. Therefore the greatest drop in voltage is across the
% boxes which makes sense. In figure 5 we see the electric field. The
% elctric field is completely in the X-direction as the potential at the
% boundaries in the Y-direction is 0. In figure 6 we are shown a
% conductivity map, the map corresponds exactly to the matrix we created to
% represent the conductivity in the mesh grid. Figure 7 shows the current
% for the specified mesh size above. The current density is equal to the
% conductivity multiplied by the electric field at each point in space. We
% map this result, the current density vectors are all in the same
% direction as the Electric Field. As seen from the figure the boxes have
% little to no current. 
%
%%
%% Part 2B Varrying mesh sizes 
Assignment2_Part2(2)
%%
% Figure 8 shown above is plotting the relative current of the mesh grid
% versus a varrying mesh size. As we can see from the plot as the mesh
% size increases so to does relative current. This makes sense as when the
% mesh size is increased the electric field is also correspondingly
% increased. Since Current density is directly proportional to the Electric
% field multiplied by the conductivity. 
%
%%
%% Part 2C-1 Varrying Box Width
Assignment2_Part2(3)
%%
% Figure 9 shown above is plotting the relative current of the mesh grid
% versus varrying bottle neck widths. As the width is varried the path of
% low resitance (or high conductivity) is made smaller and smaller. With an
% increase in resistance and having fixed voltages at the boundaries it
% makes sense the relative current in the mesh grid would decrease as the
% width of the box increases to compensate for  $V = I * R$.
%
%%
%% Part 2C-2 Varrying Box Length
Assignment2_Part2(4)
%%
% Figure 10 shown above is plotting the relative current of the mesh grid
% versus varrying bottle neck lengths. As the length is varried, the path of
% low resitance (or high conductivity) is made smaller and smaller. With an
% increase in resistance, and having fixed voltages at the boundaries it
% makes sense the relative current in the mesh grid would decrease as the
% length of the box increases to compensate for $V = I * R$.
%
%%
%% Part 2D Varrying the conductivity density map 
Assignment2_Part2(5)
%%
% Figure 11 shown above is plotting the relative current of the mesh grid
% versus varrying conductivity in the grid. As the conductvity of the boxes
% is increased the overall resistance in the mesh grid decreases. The
% current should increase to comensate for $V = I * R$. As shown above in
% figure 11, the current increases with increasing conductivity. 
%
