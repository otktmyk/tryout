class Triangle
  def triangle(a, b, c)
    # そもそも一辺でも0以下だったら三角形として成立しない
    if(a<=0 || b<=0 || c<=0)
      return false
    end
    
    # 【三角形の成立条件】
    # 三角不等式→三角形を構成する3辺の長さを a，b，c とするとき、次の三つの不等式が成り立つ
    # ・a < b+c
    # ・b < a+c
    # ・c < a+b
    return (a<b+c && b<a+c && c<a+b)
  end
  
  def isMatchPythagoras(a, b, c)
    # 【ピタゴラスの定理】
    # 直角をはさむ 2 辺 a，b と、斜辺 c の関係：a2 + b2 = c2)
    return (a**2 + b**2 == c**2)
  end
  
  def judgment(a, b, c)
    # まずは三角形なのかチェック
    if !(triangle(a, b, c))
      return "三角形じゃないです＞＜"
    end
    
    # 三角形の種類は、条件が厳しい順からチェックする
    
    # 【正三角形】
    # 二等辺三角形のうち、3 つの辺の長さがすべて等しい三角形
    if (a==b && a==c)
      return "正三角形ですね！"
    end
    
    # ※整数だけで構成できるものがないため、判定は除外しておく
    ## 【直角二等辺三角形】
    ## 二等辺三角形のうち、直角三角形の直角をはさむ 2 つの辺が等しいもの
    ## かつ
    ## ピタゴラスの定理(直角をはさむ 2 辺 a，b と、斜辺 c の関係：a2 + b2 = c2)
    #if(a==b && isMatchPythagoras(a,b,c) ||
        #       a==c && isMatchPythagoras(a,c,b) ||
        #       b==c && isMatchPythagoras(b,c,a))
        #  return "直角二等辺三角形"
        #end
        
        # 【二等辺三角形】
        # 2 つの辺の長さが等しい三角形
        if(a==b || a==c || b==c)
          return "二等辺三角形ですね！"
        end
        
        # 【直角三角形】
        # ピタゴラスの定理(直角をはさむ 2 辺 a，b と、斜辺 c の関係：a2 + b2 = c2)
        if(isMatchPythagoras(a,b,c) || 
                        isMatchPythagoras(a,c,b) || 
                        isMatchPythagoras(b,c,a))
          return "直角三角形ですね！"
        end
        
        # 【不等辺三角形】
        # 残りは、とりあえず三角形
        return "不等辺三角形ですね！"
  end
end

tri = Triangle.new
print tri.judgment(ARGV[0].to_i, ARGV[1].to_i, ARGV[2].to_i)
print "\n"
