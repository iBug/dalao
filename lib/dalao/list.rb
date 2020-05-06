module USTC
  DALAO = %w{taoky xyy loliw}

  def self.is_dalao(d)
    DALAO.include? d
  end
end
