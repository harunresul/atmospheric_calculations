function [density, relative_density] = ISA_density(altitude)
    rho0 = 1.225; % kg/m^3
    R = 287.053; % universal gas constant, J/kg/K

    P = ISA_pressure(altitude); % pressure, hPa (MSA 1013.25)
    T = ISA_temperature(altitude); % temperature, kelvin (MSA 288.15)

    density = P/(R*T)*100;
    density_relative_to_air = density/rho0;
end