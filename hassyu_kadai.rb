=begin

    条件
条件分岐とハッシュを使用してください

仕様
・年齢確認：64歳以下ならOK
・身長確認：130cm以上ならOK

実行結果

---------------------
田中さん
年齢　30歳：年齢確認OK
身長　160cm：身長確認OK

ご利用いただけます
---------------------
佐藤さん
年齢　70歳：年齢確認NG
身長　150cm：身長確認OK

ご利用いただけません
---------------------
鈴木さん
年齢　10歳：年齢確認OK
身長　120cm：身長確認NG

ご利用いただけません
---------------------

=end


params = [
  {name: :田中, age: 30, height: 160},
  {name: :佐藤, age: 70, height: 150},
  {name: :鈴木, age: 10, height: 120},
]

params.each do |param|

  puts "---------------------"
  puts "#{param[:name]}さん"

  if param[:age] <= 64 
    puts "年齢 #{param[:age]}歳 : 年齢確認OK"
  else
    puts "年齢 #{param[:age]}歳 : 年齢確認NG"
  end 

  if param[:height] >= 130
    puts "身長 #{param[:height]}cm: 身長確認OK"
  else
    puts "身長 #{param[:height]}cm : 身長確認NG"
  end

  if param[:age] <= 64 && param[:height] >= 130
    puts "ご利用いただけます"
  else
    puts "ご利用いただけません"
  end

end