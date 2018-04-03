% call vandera_function. 

% This is based on the prototype code intended for ROMS, as of
% March 21, 2018
clear all ; close all ; clc; 
% MODULE mod_scalars
% note that these are not common to functions, so make sure same values are
% used there
% END MODULE mod_scalars
% This coefficient modulates the progressive wave stress tauwRe
% Santoss includes this, and discusses values of 0.55 or zero.
% Using 1 matches equations in VA2013.
eps_eff = 1.;
%
%      Input wave parameters
%      Hs=significant wave height
%      Td=dominant wave period
%      depth=water depth(m)
%
Hs = 5.0;
Td = 3.5;
depth =  3.5;
d50 = 0.15e-3;
d90 = 1.5*d50;
%
% umag_curr is the current velocity magnitude (MAKE Sure its the magnitude)
% direction of currents is counter-clockwise from wave direction
%
umag_curr=abs(0.0);
%phi_curwave=45.0*deg2rad
deg2rad=pi/180.0; 
phi_curwave=0.0*deg2rad;


%
% uhat and ahat for the entire wave cycle  uhat is the wave orbital velocity defiend for the entire wave cycle
% TSK --. HARDWIRED for now but later needs to be based on a function for JONSWAP spectrum
uhat=1.02;

time=1;
vandera_function(time,Hs, Td, depth, d50, d90, umag_curr, phi_curwave, uhat);