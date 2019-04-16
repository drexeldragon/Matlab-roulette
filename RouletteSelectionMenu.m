numPick = [];
colorPick = [];
evenoddPick = [];
highlowPick = [];
dozensPick = [];
columnsPick = [];

choice = menu('Choose betting style', 'Single Number','Color',...
'Even/Odd','High/Low','Dozens','Columns','Quit');

switch choice
    case 1
        choice_numbers = menu('Select a number','1','2','3','4','5','6',...
        '7','8','9','10','11','12','13','14','15','16','17','18','19','20',...
        '21','22','23','24','25','26','27','28','29','30','31','32','33',...
        '34','35','36','0');
        switch choice_numbers
            case 1
                numPick = 1;
            case 2
                numPick = 2;
            case 3
                numPick = 3;
            case 4
                numPick = 4;
            case 5
                numPick = 5;
            case 6
                numPick = 6;
            case 7
                numPick = 7;
            case 8
                numPick = 8;
            case 9
                numPick = 9;
            case 10    
                numPick = 10;
            case 11
                numPick = 11;
            case 12
                numPick = 12;
            case 13
                numPick = 13;
            case 14
                numPick = 14;
            case 15
                numPick = 15;
            case 16
                numPick = 16;
            case 17
                numPick = 17;
            case 18
                numPick = 18;
            case 19
                numPick = 19;
            case 20
                numPick = 20;
            case 21
                numPick = 21;
            case 22    
                numPick = 22;
            case 23
                numPick = 23;
            case 24
                numPick = 24;
            case 25
                numPick = 25;
            case 26
                numPick = 26;
            case 27
                numPick = 27;
            case 28
                numPick = 28;
            case 29
                numPick = 29;
            case 30
                numPick = 30;
            case 31
                numPick = 31;
            case 32
                numPick = 32;
            case 33
                  numPick = 33;
            case 34
                numPick = 34;
            case 35
                numPick = 35;
            case 36
                numPick = 36;
            case 37
                numPick = 0;
        end
    case 2
        choice_color = menu('Select a color','Red','Black');
        switch choice_color
            case 1
                colorPick = 1;
            case 2
                colorPick = 2;                
        end
    case 3
        choice_evenodd = menu('Select an option','Even Numbers',...
            'Odd Numbers');
        switch choice_evenodd
            case 1 
                evenoddPick = 1;
            case 2
                evenoddPick = 2;
        end
    case 4 
        choice_highlow = menu('Select an option', 'Low (1 - 18)',...
            'High (19 - 36)');
        switch choice_highlow
            case 1
                highlowPick = 1;
            case 2
                highlowPick = 2;
        end
    case 5
        choice_dozens = menu('Select a dozen','1st 12 Numbers',...
            '2nd 12 Numbers','3rd 12 Numbers');
        switch choice_dozens
            case 1
                dozensPick = 1;
            case 2
                dozensPick = 2;
            case 3
                dozensPick = 3;
        end
    case 6
        choice_columns = menu('Select a column','1st Column',...
            '2nd Column','3rd Column');
        switch choice_columns
            case 1
                columnsPick = 1;
            case 2
                columnsPick = 2;
            case 3
                columnsPick = 3;
        end
end

%Spin Generation
numResult = randi([1,37]);
%Initial Conditions
colorResult = [];
evenoddResult = [];
highlowResult = [];
dozensResult = [];
columnsResult = [];
disp(numResult);
%Result Analysis
if numResult == 1 || 3 || 5 || 7 || 9 || 12 || 14 || 16 || 18 || 19 || 21 || 23 || 25 || 27 || 30 || 32 || 34 || 36
    colorResult = 1;
elseif numResult == 2 || 4 || 6 || 8 || 10 || 11 || 13 || 15 || 17 || 20 || 22 || 24 || 26 || 28 || 29 || 31 || 33 || 35
    colorResult = 2;
else
end

if numResult == 2||4||6||8||10||12||14||16||18||20||22||24||26||28||30||32||34||36
    evenoddResult = 1;
elseif numResult == 1||3||5||7||9||11||13||15||17||19||21||23||25||27||29||31||33||35
    evenoddResult = 2;    
else
end

if  0 < numResult && numResult < 19
    highlowResult = 1;
elseif 19 < numResult && numResult < 37
    highlowResult = 2;
else
end

if  0 < numResult && numResult < 13
    dozensResult = 1;
elseif 13 < numResult && numResult < 25
    dozensResult = 2;
elseif 25 < numResult && numResult < 37
    dozensResult = 3;
else
end

if  numResult == 1||4||7||10||13||16||19||22||25||28||31||34
    columnsResult = 1;
elseif numResult == 2||5||8||11||14||17||20||23||26||29||32||35
    columnsResult = 2;
elseif numResult == 3||6||9||12||15||18||21||24||27||30||33||36
    columnsResult = 3;
else
end

%Result Check
if numPick == numResult
    fprintf('Winner');
else
end

if colorPick == colorResult
    fprintf('Winner');
else
end

if evenoddPick == evenoddResult
    fprintf('Winner');
else
end

if highlowPick == highlowResult
    fprintf('Winner');
else
end

if dozensPick == dozensResult
    fprintf('Winner');
else
end

if columnsPick == columnsResult
    fprintf('Winner');
else
end


