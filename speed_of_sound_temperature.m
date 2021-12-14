function a = speed_of_sound_temperature(temperature)
    gama = 1.40 % gama constant for air
    R = 287.053; % universal gas constant, J/kg/K
    T = temperature;
    a = sqrt(gama*R*T);
end
