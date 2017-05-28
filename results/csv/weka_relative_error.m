#!/usr/bin/env octave -q

dataset=csvread(argv(){1}, 1, 0);
error_bound = str2num(argv(){2});
error_relative=abs((dataset(:,2) - dataset(:,3)) ./ dataset(:,2));
error_rate=1-sum(error_relative <= error_bound)/size(dataset,1)
