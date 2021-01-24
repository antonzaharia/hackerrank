class FlapDisplay 
    ABC = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    def flap_display(lines, rotors)
        output = []
        if lines.size > 0
            word = []
            rotors[0].each_with_index do |rotor, i|
              line_arr = lines[0].split("")[i]
                given_index = ABC.find_index(line_arr)
                word << ABC[set_index(given_index, rotor)]
            end
            output << word.join("")
        end
        output
    end
    
    def set_index(given_index, rotor)
        output = given_index + rotor
        while output > 26 do
          output = 25 - given_index
        end
        output
      end
end