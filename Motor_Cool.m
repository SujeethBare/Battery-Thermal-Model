MMP= readmatrix("Motormechanicalpower.xlsx");
MEP= readmatrix("Motorelectricalpower.xlsx");

Mass_Mot= 23.69;
Cp_Mot= 1350; %J-kg-C
T_Mot_Intial= 20; %degC
Cp_Air= 1350; %J/kg-C,
Cp_Coolant= 4182; %J/kg-C at 20deg,say

T_Amb= 18;

% To Calculate Mass Flow Rate for Cooling Power
%Get MHP and Motor Temp from Simulink
[max_MHP,time_MAXMHP]= max(out.MHP.Data);
Temp_maxMHP= out.Mot_Temp.Data(time_MAXMHP);
%While designing always keep a tolerance of 10%: say hoter ambient or model
%errors/losses: 
%If T_Amb is very high give it 20-30% as mass flow rate increases and quick
%cooling
Mot_CoolPow_Capability= max_MHP*1.1;

%Coolant Mass Flow Rate
Mass_flocoolant= Mot_CoolPow_Capability/(Cp_Coolant*(Temp_maxMHP-T_Amb));


