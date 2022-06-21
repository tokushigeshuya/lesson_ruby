ary = %w(a b c d e)
ary.push(ary.shift)
ary.unshift
p ary

order = ['apple', 'grape', 'orange']
stock = ['grape', 'orange', 'banana']
p order & stock
#　&は同じものを返す

a = %w(The quick brown fox)
b = %w(jumps over the lazy dog.)
c = a
a.concat(b)
#concat 配列の最後尾にコピー
c.compact!
#compact nillの削除
p c

a5 = [1,2,3]
a5[5] = 13
a5.push(7)
a5.shift
a5.pop
p a5

b = ["windows","macos"]
c = ["macos","Linux"]
p b & c

hs = {apple: 100,
      banana: 150,
      cherry: 500}

      hs.each do |k,v|
        puts k
        puts "===>" + v.to_s
      end

      hs.select! do |k,v|
        v < 200
      end
      puts hs


      x = {"foo" => 1, "bar" => 2, "baz" => 3}
      y = x.invert
      z = y.sort
      p z

h1 = {"x" => 100, "y" => 200, "z" => 300}
h2 = {"v" => 500, "w" => 600, "x" => 700}
h1.update(h2)
p h1

path ="/aaa/bbb/ccc.txt"
p File.extname(path)