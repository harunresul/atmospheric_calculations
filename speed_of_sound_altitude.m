
function a = speed_of_sound_altitude(altitude)
    gama = 1.40 % gama constant for air
    R = 287.053; % universal gas constant, J/kg/K
    T = ISA_temperature(altitude) % when input is altitude
    a = sqrt(gama*R*T);
end