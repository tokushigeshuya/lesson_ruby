Dir.chdir("/home/ec2-user/environment/ruby/")
pwd = Dir.pwd
puts "現在の場所は#{pwd}です"

files = Dir.glob("#{pwd}/*") #ファイルの一覧の取得
file = files[0]
puts "#{file}というファイルが存在しました"
puts "このファイルに書き込んでみます"

File.open(file, "a") do |io| #モード ("r"読み出し) ("w"新規書き込み) ("a" 追加)
  io.puts "こんにちわ"
end

puts "書き込み終わりました"
puts "中身を読み込んで表示します"

File.open(file,"r") do |io|
  puts "中身==>" + io.read
end

exit