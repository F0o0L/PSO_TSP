clear;clc

numPoints=280;
numSwarm=40;
omega=0.8;
c1=2;
c2=2;

% points=load('points.txt');
% points=points(1:numPoints,:);
[~,points]=readTSPFile('a280.tsp');
points=points(1:numPoints,:);

dists=calDists(points);%计算各点之间的距离
swarm=initializeSwarm(numPoints,numSwarm,dists);
swarmPBest=calPBest([],swarm);
GBest=calGBest([],swarm);

for i=1:1000
    swarm=updateSwarm(swarm,swarmPBest,GBest,dists,omega,c1,c2);
    swarmPBest=calPBest(swarmPBest,swarm);
    GBest=calGBest(GBest,swarm);
    drawnow
    plotGBest(GBest,points,i);
end