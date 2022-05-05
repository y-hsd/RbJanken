
#あっち向いてホイで違う方向の場合、繰り返し
#あっち向いてホイメソッド
#じゃんけんメソッドで勝敗(next_gameが0または1)がついたらあっち向いてメソッドが呼び出される
#あっち向いてメソッドで違う方向ならじゃんけんメソッドをもう一度呼び出す
def acchimuite(next_game)
  if next_game == 0
    puts "あっち向いて・・・"
    puts "[0]上\n[1]右\n[2]下\n[3]左"
  
    player_finger = gets.to_i
    program_face = rand(4)

    hoi = ["上","右","下","左"]
    puts "あなたの向き:#{hoi[player_finger]}, 相手の向き:#{hoi[program_face]}"

    if player_finger == program_face
      puts "あなたの勝ちです！！"
      exit
    else
      puts "もう一度じゃんけん！"
      janken
    end
  elsif next_game == 1
    puts "あっち向いて・・・"
    puts "[0]上\n[1]右\n[2]下\n[3]左"

    player_face = gets.to_i
    program_finger = rand(4)

    hoi = ["上","右","下","左"]
    puts "あなたの向き:#{hoi[player_face]}, 相手の向き:#{hoi[program_finger]}"

    if player_face == program_finger
      puts "あなたの負けです。。"
      exit
    else
      puts "もう一度じゃんけん！"
      janken
    end
  end
end

#じゃんけんメソッド
#0〜3以外を選択したらじゃんけんメソッドをもう一度呼び出す
#あいこの場合、じゃんけんメソッドをもう一度呼び出す
#勝敗がついたらnext_gameに引数を渡してacchimuiteメソッドを呼び出す
puts "最初はグー、じゃんけん・・・・"
def janken
  puts "[0]グー\n[1]チョキ\n[2]パー\n[3]戦わない"

  player_hand = gets.to_i
  program_hand = rand(3)
  
  if player_hand != 0 && player_hand !=1 && player_hand !=2 && player_hand !=3
    puts "０、１、２、３のどれかを選んでください"
    janken
  end
  
  if player_hand ==3
    puts "終了します。"
    exit
  end

  jankens = ["グー", "チョキ","パー"]
  puts "あなたの手:#{jankens[player_hand]}, 相手の手:#{jankens[program_hand]}"

  if player_hand == program_hand
    puts "あいこで・・・"
    janken
  elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
    puts "あなたの勝ちです！！"
    acchimuite(0)
  else
    puts "あなたの負けです！"
    acchimuite(1)
  end
end

janken