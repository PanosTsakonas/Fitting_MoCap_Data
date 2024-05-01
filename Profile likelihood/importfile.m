function [newData1] = importfile(fileToRead1,shname)
%IMPORTFILE(FILETOREAD1)
%  Imports data from the specified file
%  FILETOREAD1:  file to read

%  Auto-generated by MATLAB on 09-Feb-2022 13:33:17

% Import the file
if isempty(shname)==1
sheetName='Sheet1';
else
    sheetName=shname;
end
[numbers, strings] = xlsread(fileToRead1, sheetName);
if ~isempty(numbers)
    newData1.data =  numbers;
end
if ~isempty(strings)
    newData1.textdata =  strings;
end

