function P = ISA_pressure(altitude)
    % P in hPa, T in Kelvin
    P0 = 1013.25; % P at MSA
    T0 = 288.15; % T at MSA
    P1 = 226.32; % P at 11,000m
    T1 = 216.65; % T at 11,000m

    alpha= 0.0065; % celcius/m
    g0 = 9.80665; % gravity

    h = altitude*0.3048; % altitude in meters
    h1 = 11000;

    R = 287.053; % universal gas constant, J/kg/K

    if altitude==0
        P = P0;
    elseif (0<altitude) && (altitude<36089)
        P = P0*((1-(alpha/T0)*h))^(g0/(alpha*R));
    elseif altitude>36089
        P = P1*exp((-g0*(h-h1))/(R*T1));
    end

end