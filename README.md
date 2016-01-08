# getSeizureClip
This Matlab code aims to download an EEG epoch from the ieeg.org portal. The function was created to get a 'seizure clip', i.e., a segment
in which the ictal start is centered. The command for the function is

...

[data,szStartPoint, chLabels, datasetId] = getSeizureClip(datasetId,userName, pwdFile, szStartTime, timeWindow)

...

For the input:

...

datasetId - ID of the ieeg.org dataset you intend to download
userName - Your ieeg.org username
pwdFile - Your ieeg.org password file
szStartTime - Starting time (in seconds) of the seizure
timeWindow - Time before and after the seizure start to be included in the epoch

...

For the output:

...

data - Matrix containing the EEG data
szStartPoint - Seizure starting point in the channel vectors
chLabels - Channel labels

...

It is important to keep in mind that there is a download limit on ieeg.org website. This functions gets the data by channel to reduce
this limitation, however, you might still have troubles.
