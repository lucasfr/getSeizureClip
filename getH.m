datasetId = 'I001_P005_D01';
userName = 'lucasfr';
pwdFile = 'luc_ieeglogin.bin'
szStarttime = 
timeBefore = 
timeAfter = 


session = IEEGSession(datasetId,userName,pwdFile);
chNumber = numel(session.data.channelLabels(:,1));
sampRate = session.data.sampleRate;



for i = 1:chNumber
            data(i,:) = session.data.getvalues(117000001:135000000,i);
            i
end

% dlmwrite('I001_P005_D01.dat',data,'delimiter','\t')