# get string and shift value from function
def ceasar_cipher(text, shift)
    # convert string to per letter array via split
    special_char = [" ", "!", "?", ",", "."]
    text_arr = text.split("")
    convert_arr = []
    new_text_arr = []
    new_text = []
    # convert letters to ascii value then add to convertArr
    text_arr.each do |letter|
        #capture special character and add to conver_arr
        letter_val = letter.ord
        if special_char.include?(letter)
            convert_arr.push(letter_val)
        #capture uppercase letters then convert and add to conver_arr
        elsif letter_val >= 65 && letter_val <= 90
            # add shift value to ascii values
            shifted_upper_val = letter_val + shift
                if shifted_upper_val > 90
                    wrap_upper_val = shifted_upper_val - 26
                    convert_arr.push(wrap_upper_val)
                else
                    convert_arr.push(shifted_upper_val)
                end
        #capture lowercase letters then convert and add to conver_arr
        elsif letter_val >= 97 && letter_val <= 122
            # add shift value to ascii values
            shifted_val = letter_val + shift
                if shifted_val > 122
                    wrap_val = shifted_val - 26
                    convert_arr.push(wrap_val)
                elsif
                    convert_arr.push(shifted_val)
                end
        end

    end

    # convert back ascii values to letters
    convert_arr.each do |val|
        new_letter = val.chr
        new_text_arr.push(new_letter)    
    end

    new_text = new_text_arr.join("")

end
