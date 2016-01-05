%The function getH returns an EEG epoch, downloaded from the ieeg.org
%portal, containing an epileptic seizure and the channel labels.
%This is still a function to be developed. Hope to include comments soon. 

function [data,szStartPoint, chLabels] = getH(datasetId,userName, pwdFile, szStartTime, timeWindow) 

session = IEEGSession(datasetId,userName,pwdFile);
chNumber = numel(session.data.channelLabels(:,1));
chLabels = session.data.channelLabels(:,1);
sampRate = session.data.sampleRate;

szStartPoint = szStartTime*sampRate;
pointBefore = -(timeWindow*sampRate) + szStartPoint;
pointAfter = timeWindow*sampRate + szStartPoint;



for ch = 1:chNumber
            data(ch,:) = session.data.getvalues(pointBefore:pointAfter,ch);
            ch
end

end
