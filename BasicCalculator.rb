def Calculator string
    stringLength = string.length

    #Check if first characters are not a number
    if string.to_i == 0 and string[0].to_i != 0
        return 'Wrong math operation, please input again'
    else
        number1 = string.to_i
        number1Length = number1.to_s.length
        string = string[number1Length, stringLength - 1]
        operator = string[0]

        if operator != '+' and operator != '-' and operator != '*' and operator != '/'
            return 'Wrong math operation, please input again'
        else
            string = string[1, stringLength - number1Length - 1]
            if string.to_i == 0 and string[0].to_i != 0
                return 'Wrong math operation, please input again'
            else
                number2 = string.to_i
                number2Length = number2.to_s.length
                string = string[number2Length, stringLength - number1Length - 1 - number2Length]
                if string != ''
                    return 'Wrong math operation, please input again'
                else
                    result = 0
                    if operator == '+'
                        result = number1 + number2
                    end
                    if operator == '-'
                        result = number1 - number2
                    end
                    if operator == '*'
                        result = number1 * number2
                    end
                    if operator == '/'
                        result = number1/number2
                    end
                    return result
                end
            end
        end
    end
end

puts 'This is a Simple Calculator.'
puts 'This Calculator can accomplish four operations: Addition (+), Subtraction (-), Multiplication (*), Division (/)'
puts 'Format for inputed math operations: [number1][operator][number2][Enter] without space. Example: 26+34(Enter)'
puts 'Calculator will stop when you input "Stop!"'
puts
puts 'Let input your math operation ^ ^'
string = gets.chomp
while string != 'Stop!'
    puts Calculator string
    puts 
    string = gets.chomp
end
puts 'Bye! See you again!'
