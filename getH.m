function [data,szStartPoint] = getH(datasetId,userName, pwdFile, szStartTime, timeBefore,timeAfter) 
session = IEEGSession(datasetId,userName,pwdFile);
chNumber = numel(session.data.channelLabels(:,1));
sampRate = session.data.sampleRate;

szStartPoint = szStartTime*sampRate;
pointBefore = timeBefore*sampRate;
pointAfter = timeAfter*sampRate;



for i = 1:chNumber
            data(i,:) = session.data.getvalues(117000001:135000000,i);
            i
end

end
% dlmwrite('I001_P005_D01.dat',data,'delimiter','\t')