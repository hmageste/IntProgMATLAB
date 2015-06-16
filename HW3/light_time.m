function [times, distances_km] = light_time(distances_miles)
times = distances_miles.*(1.609/300000/60);
distances_km = distances_miles.*1.609;
end