Batt_Pow= readmatrix("BatteryPackPower.xlsx");
Batt_SOC= readmatrix("BatteryPackSOC.csv");
Cell_Data= readmatrix("NLCellData.csv");
Cell_Volt= Cell_Data(:,2:3);

%Batt_Time=
%Batt_Power=

Ns= 96;
Np= 2;
Cell_Width= 0.226; %m
Cell_Length= 0.227; %m

Cd=1350; %J/KgK 
H_Convec= 5; %heat exchanged between the battery surface and the surrounding air

M_Pack= 150.2; %kg
R_Inter= 0.0023; %Interconnection Resistance
Cd_Pack= 810.5328;
%Open simulink model and see 2D LUT.Then  you will understand why this has
%been initiliased.
R_Cell= [0.0117,0.0085,0.0090; 0.0110,0.0085,0.0090; 0.0114,0.0087,0.0092; 0.0107,0.0082,0.0088;0.0107,0.0083,0.0091; 0.0113,0.0085,0.0089; 0.0116,0.0085,0.0089];
SOC= [0;0.1;0.25;0.5;0.75;0.9;1.0];
Temp= [278.15;293.15;313.15];
T_amb= 293.15;
T_amb_C= T_amb-273.15;   % 20 °C


