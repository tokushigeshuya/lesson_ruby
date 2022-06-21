#冷蔵庫クラス
class ReizoukoA
  #設定温度を受け取ってインスタンス化
  def initialize(num) #初期処理で引数で数字を与える
    @set_temperature = num.to_i#目標温度
    @temperature = 25#現在の温度
    @foodstuff = []#中の食材
    power(:on)#初期処理でパワーをオン
    puts "設定温度を#{@set_temperature}に設定しました"
    puts "現在の温度は#{@temperature}です"
    puts "#{@foodstuff.size}個の食材があります"
  end
  
#冷やす機能：１回の実行で-1℃冷える
 def cool_down
   @temperature -= 1 if @set_temperature < @temperature
   puts "内部を冷やして#{@temperature}になりました"
 end

#ドアを開く機能
#内部温度が上昇する。食材を一覧表示する
  def open_door
    @temperature += 3
    puts "内部温度が上昇して#{@temperature}になりました"
    puts "#{@foodstuff.size}個の食材があります"
    @foodstuff.each do |v|
      puts v
    end
  end

  #冷蔵庫に食材を入れる
  def put_in(str) #引数を受けっとて@foodに追加する
    @foodstuff << str
  end

  #電源on
  def power(onoff)
    puts "電源を入れました" if onoff.to_sym == :on
    puts "電源を切りました" if onoff.to_sym == :off
  end
end

#実行結果
if __FILE__ == $0 then #現在のソースファイル名が格納された疑似変数__FILE__
  modelA = ReizoukoA.new(15)#引数（目標設定温度）を代入 物体を生成
  #.newでオブジェクトを作り操作する　絶対
  modelA.cool_down
  modelA.put_in("apple")
  modelA.open_door
  modelA.power(:off)
end