require "./player"

class Menu
	input_player = 0
	while input_player != 3 do
	puts "#=============================================#"
	puts "#            Welcome to Battle Arena          #"
	puts "#---------------------------------------------#"
	puts "# Description :                               #"
	puts '# 1. ketik "1" untuk membuat karakter         #'
	puts '# 2. ketik "2" untuk memulai pertarungan      #'
	puts "#---------------------------------------------#"
	puts "# Current Player :   #{@player1}                 #"
	puts "#                    -                        #"
	puts "# * max player 2 atau 3                       #"
	puts "#=============================================#"

	inputan = gets.chomp.to_i
	case inputan
	when 1
		puts "saatnya membuat karakter"
		puts "Masukkan nama player: "
		player1=Player.new gets.chomp 
		puts "Player name = #{player1.name}"
      	puts "Player blood = #{player1.blood}"
      	puts "Player manna = #{player1.manna}"
	when 2
		puts "saatnya memulai pertarungan"
		require "./start"
	else 
		puts "masukkan pilihan yang benar"
		input_player = 3
	end

	end

end



