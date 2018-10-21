# 練習：請印出從 1 到 100 之間所有的單數。
p "第1題"
p [*1..100].select{|x| x%2==1}

# 練習：請印出從 1 到 100 之間所有的單數的總和。
p "第2題"
p [*1..100].select{|x| x%2==1}.reduce{|sum,x| sum+x}

# 練習：改良版土砲 times 方法
# 5.my_times { |i| puts i }                 
# 印出數字 0 ~ 4

# 原作法 5.times{|i| puts i}

class Integer
    def my_times
        i=0
        while i< self
            yield i
            i=i+1
        end
    end
end
p "第3題"
5.my_times{|i| puts i}

# 練習：土砲 select 方法
# [1, 2, 3, 4, 5].my_select { |i| i.odd? }  # 只印出單數 1, 3, 5
# Ruby block
class Array
    def my_select
        result=[]
        self.each do |i|
            result << i if yield i
        end
        result
    end
end
p "第4題"
p [1, 2, 3, 4, 5].my_select { |i| i.odd? } 
