jikan = Time.new
p jikan

jikan2 = Time.local(1992,12,23,12,59,59)
  p jikan2

p jikan.strftime("%Y年%m月%d日 %H:%m")

p jikan.hour#時間だけ
p jikan.min#分
p jikan.sec#秒

p Time.now + 200.0