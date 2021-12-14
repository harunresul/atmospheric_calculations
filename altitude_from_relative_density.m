function altitude = altitude_from_relative_density(density_1, density_2)
    beta = 9296; % troposphere: 9296, stratosphere: 7254 
    altitude = beta*log(density_1/density_2);
end