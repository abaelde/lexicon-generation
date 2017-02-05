%% Generation of random logatoms
clc
clear all

numberSyllabe = 4; % number of syllab in each word
numberWord = 100; % Number of desired words
% Vowels and consonnant used for word generation
voyelles = { 'a', 'e', 'i', 'o', 'u', 'y', 'é', 'ai', 'ei', 'ou', 'on', 'ain', 'ein', 'in', 'ui', 'ue', 'eu', 'eau', 'au' };
consonnes = { 'b', 'c', 'd', 'f','g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'z', 'qu'};

%Number of vowels and consonant
nbV = length(voyelles);
nbC = length(consonnes);

% Syllabe dictionnary generation
syl = cell(nbC, nbV);
nbS = nbC*nbV; % dictionnary size
for cC = 1:nbC
    for cV = 1:nbV
        syl{cC, cV} = strcat(consonnes{cC}, voyelles{cV});
    end
end

%Export file
fileID = fopen('mot2syl2.txt','w');
formatSpec = '%s\n';

% random logatom generation
mot = cell(numberWord, 1);
for cW = 1:numberWord
    cW/numberWord
    posSyl = max(round(rand(1, numberSyllabe)*nbS),1); 
    
    for cS = 1:numberSyllabe
        mot{cW} =  strcat( mot{cW}, syl{posSyl(cS)});
        %fprintf(fileID,formatSpec,mot{cW});
    end
   
end
mot
fclose(fileID);





