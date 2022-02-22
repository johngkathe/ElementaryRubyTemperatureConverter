require 'io/console'

TEMP_TYPES = ["c", "C", "f", "F"]

def main
    type_choice = get_temp_type()

    temp = get_temp()

    temp = (type_choice.upcase == "F") ? f_to_c(temp) : c_to_f(temp)

    puts (temp % 1 == 0) ? temp.round() : temp.round(1)
end

def get_temp_type()
    puts "Please choose a valid temperature type."
    print "C for Celsius or F for Fahrenheit: "
    
    choice = $stdin.getch
    puts choice + "\n"

    (TEMP_TYPES.include? choice) ? choice : get_temp_type()
end

def get_temp()
    print "Please enter a temperature: "

    choice = $stdin.gets

    choice.to_i
end

def c_to_f(celsius)
    celsius * (9.0/5.0) + 32
end

def f_to_c(fahrenheit)
    (fahrenheit - 32) * (5.0/9.0)
end

main()