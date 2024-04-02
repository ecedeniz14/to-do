clear
clc

base = "What is the input's number system?";
input_base = input(base,"s");


if input_base == "binary" || input_base == "Binary"
    type = "binary";
    input_binary = "Give a binary input.";
    input1 = input(input_binary);

elseif input_base == "decimal" || input_base == "Decimal"
    type = "decimal";
    input_decimal = "Give a decimal input.";
    input1 = input(input_decimal);

elseif input_base == "octal" || input_base == "Octal"
    type = "octal";
    input_octal = "Give an octal input.";
    input1 = input(input_octal);
    
else 
    disp("Not a valid input base.")
    return
end

if type == "octal"
    try
    dec = oct2dec(input1);
    catch
        disp("Not a valid input.")
        return
    end
elseif type == "binary"
    try
    dec = bin2dec(num2str(input1));
    catch
        disp("Not a valid input.")
        return
    end
end

base = "What is the output's number system?";
output_base = input(base,"s");

if type == "binary"
    if output_base == "decimal"
        disp(dec)
    elseif output_base == "octal"
        dec = dec2base(dec,8);
        disp(dec)
    elseif output_base == "binary"
        disp(input1)
    end
end

if type == "decimal"
    if output_base == "octal"
        dec = dec2base(input1,8);
        disp(dec)
    elseif output_base == "binary"
        dec = dec2base(input1,2);
        disp(dec)
    elseif output_base == "decimal"
        disp(input1)
    end
else
end

if type == "octal"
    if output_base == "decimal"
        disp(dec)
    elseif output_base == "binary"
         dec = dec2base(dec,2);
         disp(dec)
    elseif output_base == "octal"
        disp(input1)
    end
end









x = bin2dec('10011');
c = oct2dec(162);
D = 23;
baseStr = dec2base(D,8);