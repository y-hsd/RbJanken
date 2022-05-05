#jankenメソッド
#グー:0,チョキ:1,パー:2
#勝ち:0,負け:1,あいこ:2
#あいこの場合、繰り返し
#あっち向いてホイで違う方向の場合、繰り返し

puts "最初はグー、じゃんけん・・・・"

def janken
  puts "[0]グー\n[1]チョキ\n[2]パー\n[3]戦わない"

  player_hand = gets.to_i
  program_hand = rand(3)
  
  if player_hand == 3
    puts "終了します"
    exit
  end

  jankens = ["グー", "チョキ","パー"]
  puts "あなたの手:#{jankens[player_hand]}, 相手の手:#{jankens[program_hand]}"

  if player_hand == program_hand
    puts "あいこで"
    janken
  elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
    puts "あなたの勝ちです！"
    next_game ="2"
    acchimuite(next_game)
  else
    puts "あなたの負けです！"
    next_game = "3"
    acchimuite(next_game)
  end
end

#あっち向いてホイメソッド
#指向き　上:４,右:５,下:６,左:７
#顔向き　上:４,右:５,下:６,左:７
#じゃんけんで勝敗(resultが2または３)がついたら実行する
#違う方向ならじゃんけんメソッドを実行
def acchimuite(next_game)
  if next_game === 2
    puts "あっち向いて・・・"
    puts "[0]上\n[1]右\n[2]下\n[3]左"
  
    player_finger = gets.to_i
    program_face = rand(4)

    hoi = ["上","右","下","左"]
    puts "あなたの向き:#{hoi[player_finger]}, 相手の向き:#{hoi[program_face]}"

    if player_finger == program_face
      puts "あなたの勝ちです"
      exit
    else
      janken
    end
  elsif next_game === 3
    puts "あっち向いて・・・"
    puts "[0]上\n[1]右\n[2]下\n[3]左"

    player_face = gets.to_i
    program_finger = rand(4)

    hoi = ["上","右","下","左"]
    puts "あなたの向き:#{hoi[player_finger]}, 相手の向き:#{hoi[program_face]}"

    if player_face == program_finger
      puts "あなたの負けです"
      exit
    else
      janken
    end
  end
end