function dists=calDists(points)
%% �������֮�����
for i=1:length(points(:,1))
    for j=i+1:length(points(:,1))
        dists(i,j)=calDist(points(i,:),points(j,:));
        dists(j,i)=dists(i,j);
    end
end

%% ��������֮�����
function dist=calDist(point1,point2)

dist=sqrt((point1(1,1)-point2(1,1))^2+(point1(1,2)-point2(1,2))^2);
