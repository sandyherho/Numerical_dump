clear all; close all; clc
whos

load pacific_sst
sst_mean = mean(sst, 3);
imagescn(lon, lat, sst_mean)

% cmocean % color ocean choice
cmocean thermal