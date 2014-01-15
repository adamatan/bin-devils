# random

Lightweight random number and character generation using Python's random module.

Usage:

    % random

e.g.:

	% random
    0.322526331624

    % random -c 5
    0.160972034682
    0.863600976644
    0.568183969628
    0.638784606278
    0.0487238560732

    % random -a 3
    oCT

    % random -a 20
    5Vz2v0XSdT9R7mHj38Pm

    % random -c 30 -s "%3d" -i 3 6
       6  5  5  5  4  3  3  6  5  4  5  4  5  3  5  6  6  3  3  3  6  5  6  6  5  6  6  3  3  6

    # Lat/Lon Coordinates!
    % random -c 2 -s "%8.2f" -f -180 180
      156.42 -113.20