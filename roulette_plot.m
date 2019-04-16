%% Struct which stores the color of the spin and number
% A nested structure is necessary because we want to associate the number
% with a color and not just with the struct spin.

Spin= struct('red',[],'black',[]); %Preallocating color/num into struct
Spin.red =struct('number',[]); %nested struct to indicate color of number
Spin.black=struct('number',[]);


if ismember(red, numResult) %checking the color of each number
Spin.red.number(end+1)= numResult; %storing numbers into color struct
else
Spin.black.number(end+1)= numResult;
end

% Counting the frequency of 'Red' and 'Black'

RedCount=numel(Spin.red.number);
BlackCount=numel(Spin.black.number);
ColorCount=[RedCount, BlackCount];
BlackNumbers=Spin.black.number;
RedNumbers=Spin.red.number;


%% Histogram of red number outcomes and their frequency
subplot(3,1,1)
histogram(BlackNumbers,'Normalization', 'pdf', 'FaceColor','k')
title('Frequency of black numbers')
xlabel('Numbers')
ylabel('Occurences')
% Histogram of black number outcomes and their frequency
subplot(3,1,2)
histogram(RedNumbers,'Normalization', 'pdf', 'FaceColor','r')
title('Frequency of red colors')
xlabel('Numbers')
ylabel('Occurences')

% Histogram of red/black frequency
subplot(3,1,3);
bar(ColorCount)
set(gca, 'XtickLabel', {'Red', 'Black'})
title('Frequency of Red vs Black Spin Results')
xlabel('Numbers')
ylabel('Occurences')


