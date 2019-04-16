% Menu Display
%Build test function that will run program 100 times and make it display
%on histogram.
%Build struct for player score keeping, chip amount
choice = menu('Welcome to Roulette', 'Buy Chips', 'Display Chips',...
 'Place Even Bet', 'Place Odd Bet', 'Place Black Bet','Place Red Bet',...
 'Place Number Bet', 'Spin Wheel', 'Quit');
% Creating Board of Colors   

Board= cell(1,36)
    for i=1:length(Board);
    if i==1
    Board{1}='Green';
    elseif mod(i,2)==0
        Board{i} = 'Red'
    else
    Board{i} = 'Black';
    end
    end
Quit=0
while(Quit==0)    
switch choice
    case 1
        prompt = 'How many chips would you like to buy? \n';
        chipsBought=input(prompt);
        break;
    case 2
        fprintf('You have %d chips', chipsBought);
        break;
    case 3
        prompt = 'Enter amount to bet on even: \n';
        %if input(prompt) > 0
        amount = input(prompt);
        %else fprintf 'Enter a valid amount';
    case 4
        prompt = 'Enter amount to bet on odd:  \n';
        amount = input(prompt);
       
    case 5
        prompt = 'Enter amount to bet on black: \n';
    case 6
        prompt = 'Enter amount to bet on red: \n';
    case 7
        prompt = 'Enter number to bet on from 0-36: \n';
        number = input(prompt); %use struct to store number and amount
        prompt = 'Enter amount to bet on that number: \n';
        amount = input(prompt);
        
    case 8
        result = struct('number',[], 'color',[]);
        result.number = randi([1 36]);
        result.color = Board{result.number};
        fprintf('Your SPIN = %s %d \n', result.color, result.number)
    case 9
        choice2= menu('Would you like to stop?', 'Yes' , 'No')
        switch choice2
            case 1
                Quit = 1;
            case 2
                Quit = 0;  
        end
        break;
end
end


       

        
        
%Buying Chips, subtract chips
%Create a Struct
%Build a while loop so the game will restart after each case
%Create Probability Payout eg Bet resolution maybe create separate function
% in another file or nested function, anonymous function?
% even amount, odd amount, number amount, red amount, black amount?
%plot results and make a test function 
%print results to file showing player information. 