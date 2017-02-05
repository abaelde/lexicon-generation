% création de non mots
clc
clear all

% génération syllabes
voyelles = { 'a', 'e', 'i', 'o', 'u', 'y', 'é', 'ai', 'ei', 'ou', 'on', 'ain', 'ein', 'in', 'ui', 'ue', 'eu', 'eau', 'au' };
consonnes = { 'b', 'c', 'd', 'f','g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'z', 'qu'};

nbV = length(voyelles);
nbC = length(consonnes);

nombreSyllabe = 2;

syl = cell(nbC, nbV);
%Génération des syllabes
for cC = 1:nbC
    for cV = 1:nbV
        syl{cC, cV} = strcat(consonnes{cC}, voyelles{cV});
    end
end

nbS = size(syl, 1)*size(syl, 2);
mot = cell(nbS*nbS, 1);
i = 1;
fileID = fopen('mot2syl.txt','w');
formatSpec = '%s\n';
nbM = nbS*nbS

for cS1 = 1:nbS
    cS1/nbS
    for cS2 = 1:nbS
        
        mot{i} =  strcat( syl{cS1}, syl{cS2} );
        fprintf(fileID,formatSpec,mot{i});
          i = i+1;
    end
end

fclose(fileID);


%% sélectiond e mots

nbMotSel = 100;
pos = round(rand(1,nbMotSel)*nbM) 
fileID = fopen('motMartine2.txt','w');
formatSpec = '%s\n';
for cMM = 1:nbMotSel

    disp(mot{pos(cMM)})
fprintf(fileID,formatSpec,mot{pos(cMM)});
end


fclose(fileID);








