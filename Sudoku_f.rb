

def sodoku(string)

string_sodoku = string
matrix_sodoku = [] 
array_horizontal = []
array_vertical = []
array_cuadrado = []
array_sum_arr = []
array_missing = []
array_cadena = []
cadena_final = ""
contador = 0
count = 0
array_numeros = [1,2,3,4,5,6,7,8,9]
array_final = []


#p string_sodoku.split('').each_slice(9) { |val| p val }

string_sodoku.split('').each_slice(9) { |val| matrix_sodoku << val }



 #p matrix_sodoku
 #p matrix_sodoku.count

 # matrix_sodoku.each do |val_index|
  # print val_index.index("0")
# end

#while matrix_sodoku.include?("0")

matrix_sodoku.each do |x|  
  if x.count("0") >= 1
    contador += 1
  end
end


until contador == 0

contador = 0
  matrix_sodoku.each do |x|  
  if x.count("0") >= 1
    contador += 1
  end
end

  for find_zero_h in 0..matrix_sodoku.count-1
    for find_zero_v in 0..matrix_sodoku.count-1
  
      if matrix_sodoku[find_zero_h][find_zero_v] == "0"
        #p "[#{find_zero_h}] [#{find_zero_v}] Tienen valor cero"
        for horizontal in 0..matrix_sodoku.count-1
          array_horizontal << matrix_sodoku[find_zero_h][horizontal]
        end
  
        for vertical in 0..matrix_sodoku.count-1
          array_vertical << matrix_sodoku[vertical][find_zero_v] 
        end
  
        if (find_zero_h == 0 || find_zero_h == 3 || find_zero_h == 6) && (find_zero_v == 0 || find_zero_v == 3 || find_zero_v == 6)
          for pos_h in 0..2
            for pos_v in 0..2
              array_cuadrado << matrix_sodoku[find_zero_h+pos_h][find_zero_v+pos_v]
            end
          end 
        elsif (find_zero_h == 0 || find_zero_h == 3 || find_zero_h == 6) && (find_zero_v == 1 || find_zero_v == 4 || find_zero_v == 7)
          for pos_h in 0..2
            for pos_v in -1..1
              array_cuadrado << matrix_sodoku[find_zero_h+pos_h][find_zero_v+pos_v]
            end
          end 
        elsif (find_zero_h == 0 || find_zero_h == 3 || find_zero_h == 6) && (find_zero_v == 2 || find_zero_v == 5 || find_zero_v == 8)
          for pos_h in 0..2
            for pos_v in -2..0
              array_cuadrado << matrix_sodoku[find_zero_h+pos_h][find_zero_v+pos_v]
            end
          end 
        elsif (find_zero_h == 1 || find_zero_h == 4 || find_zero_h == 7) && (find_zero_v == 0 || find_zero_v == 3 || find_zero_v == 6)
          for pos_h in -1..1
            for pos_v in 0..2
              array_cuadrado << matrix_sodoku[find_zero_h+pos_h][find_zero_v+pos_v]
            end
          end 
        elsif (find_zero_h == 1 || find_zero_h == 4 || find_zero_h == 7) && (find_zero_v == 1 || find_zero_v == 4 || find_zero_v == 7)
          for pos_h in -1..1
            for pos_v in -1..1
              array_cuadrado << matrix_sodoku[find_zero_h+pos_h][find_zero_v+pos_v]
            end
          end 
        elsif (find_zero_h == 1 || find_zero_h == 4 || find_zero_h == 7) && (find_zero_v == 2 || find_zero_v == 5 || find_zero_v == 8)
          for pos_h in -1..1
            for pos_v in -2..0
              array_cuadrado << matrix_sodoku[find_zero_h+pos_h][find_zero_v+pos_v]
            end
          end 
        elsif (find_zero_h == 2 || find_zero_h == 5 || find_zero_h == 8) && (find_zero_v == 0 || find_zero_v == 3 || find_zero_v == 6)
          for pos_h in -2..0
            for pos_v in 0..2
              array_cuadrado << matrix_sodoku[find_zero_h+pos_h][find_zero_v+pos_v]
            end
          end 
        elsif (find_zero_h == 2 || find_zero_h == 5 || find_zero_h == 8) && (find_zero_v == 1 || find_zero_v == 4 || find_zero_v == 7)
          for pos_h in -2..0
            for pos_v in -1..1
              array_cuadrado << matrix_sodoku[find_zero_h+pos_h][find_zero_v+pos_v]
            end
          end 
        elsif (find_zero_h == 2 || find_zero_h == 5 || find_zero_h == 8) && (find_zero_v == 2 || find_zero_v == 5 || find_zero_v == 8)
          for pos_h in -2..0
            for pos_v in -2..0
              array_cuadrado << matrix_sodoku[find_zero_h+pos_h][find_zero_v+pos_v]
            end
          end 
        else
          array_cuadrado = nil
        end
  
  
        #p array_horizontal
        #p array_vertical
        #p array_cuadrado
        
  
        array_sum_arr = (array_horizontal + array_vertical + array_cuadrado).uniq
  
        array_sum_arr.map! { |valor_int| valor_int.to_i }
        #p array_sum_arr
        array_missing =  array_numeros - array_sum_arr 
        #p array_missing
  
        if array_missing.count == 1
          matrix_sodoku[find_zero_h][find_zero_v] = array_missing[0].to_s
        end
  
        array_horizontal = []
        array_vertical = []
        array_cuadrado = []
  
  
      end
  
    end
  end
end

puts



#matrix_sodoku.each {|arr| p arr}
matrix_sodoku.each do |arr1|
  arr1.each do |arr2|
    cadena_final << arr2
  end

  array_cadena = cadena_final.split('')
  

end

  for fila in 0..16
    for columna in 0..16
      if (fila == 0 || fila == 2 || fila == 4 || fila == 6 || fila == 8 || fila == 10 || fila == 12 || fila == 14 || fila == 16 ) && (columna == 1 || columna == 3|| columna == 5 || columna == 7 || columna == 9 || columna == 11 || columna == 13 || columna == 15 )
        print "  |  " 
      elsif fila == 1 || fila == 3 || fila == 5 || fila == 7 || fila == 9  || fila == 11 || fila == 13 || fila == 15 
        print "-----" 
      elsif (fila == 0 || fila == 2 || fila == 4 || fila == 6 || fila == 8 || fila == 10 || fila == 12 || fila == 14 || fila == 16 ) && (columna != 1 || columna != 3|| columna != 5 || columna != 7 || columna != 9 || columna != 11 || columna != 13 || columna != 15 )
            print "  #{array_cadena[count]}  "
          count += 1
      end
    end
    puts
  end


p cadena_final

end

sodoku('702806519100740230005001070008000002610204053200000100070400800064078005821503907')
sodoku('609238745274561398853947621486352179792614583531879264945723816328196457167485932')
sodoku('308290400020800730050000002090304126410080073635102040500000090089003060003067801')
sodoku('098206050001087900206500000400100009050734080100005003000009805007350400010802630')
sodoku('530070000600195000098000060800060003400803001700020006060000280000419005000080079')

sodoku('105802000090076405200400819019007306762083090000061050007600030430020501600308900')
sodoku('005030081902850060600004050007402830349760005008300490150087002090000600026049503')
sodoku('290500007700000400004738012902003064800050070500067200309004005000080700087005109')
sodoku('080020000040500320020309046600090004000640501134050700360004002407230600000700450')
sodoku('608730000200000460000064820080005701900618004031000080860200039050000100100456200')






# "0", "0", "8"
# "6", "1", "0"
# "2", "0", "0"


 