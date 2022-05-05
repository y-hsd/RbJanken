#ジャンケン
#グー:0,チョキ:1,パー:2
#勝ち:0,負け:1,あいこ:2
#0か1まで繰り返す

#あっち向いてホイ
#指向き　上:４,右:５,下:６,左:７
#顔向き　上:４,右:５,下:６,左:７
#結果　同じ向き：指が勝ち(終わり)、違う向き：(じゃんけんに戻る)

puts "最初はグーじゃんけん・・・・"
result ="1"

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
    result = "1"
    return result
  elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
    puts "あなたの勝ちです！"
    result = "2"
    return result
  else
    puts "あなたの負けです！"
    result = "3"
    return result
  end
end

next_game = result
  while next_game == "1"
      if next_game != "1"
      break
      end
    janken
  end

next_game = result

def acchimuite
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
    result = "1"
    return result
  end
elsif next_game === 3
  puts "あっち向いて・・・"
  puts "[0]上\n[1]右\n[2]下\n[3]左"

  player_face = gets.to_i
  program_finger = rand(4)

  hoi = ["上", "右","下","左"]
  puts "あなたの向き:#{hoi[player_finger]}, 相手の向き:#{hoi[program_face]}"

  if player_face == program_finger
    puts "あなたの負けです"
    exit
  else
    result = "1"
    return result
  end
end
end