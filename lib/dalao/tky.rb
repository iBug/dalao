require 'admire'

def admire
  USTC::Dalao.new do |t|
    t.name = 'TaoKY'
    puts t
    puts t.excellent?
    puts t.taunt
  end
end

admire
