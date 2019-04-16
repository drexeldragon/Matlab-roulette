Board= cell(12,3);
num=1;
n=1;
    for i=1:size(Board,1);
        for j=1:size(Board,2);
        Board{i,j}=num;
        num=num + 1;
        end
    end
    
%Column Bets
if ismember(numresult, [Board{:,1}]) %Column1
 %   if i==1
  %  Board{1}='Green';
   % elseif mod(i,2)==0
    %    Board{i} = 'Red'
    %else
    %Board{i} = 'Black';
    %end
    %end
    