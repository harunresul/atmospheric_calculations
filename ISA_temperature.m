function T = ISA_temperature(altitude)
    % T in Kelvin
    T0 = 288.15;

    if altitude==0
        T = T0;
    elseif (0<altitude) && (altitude<36089)
        T = 15 - 2*(altitude/1000);
        T = T + 273.15;
    elseif altitude>36089
        T = 216.65;
    end

end