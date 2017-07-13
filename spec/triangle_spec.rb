require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  tri = Triangle.new
  # a,b,cいづれか１辺でも0以下なら三角形じゃない
  specify { expect(tri.judgment(0,0,1)).to eq "三角形じゃないです＞＜" }
  specify { expect(tri.judgment(0,1,0)).to eq "三角形じゃないです＞＜" }
  specify { expect(tri.judgment(0,1,1)).to eq "三角形じゃないです＞＜" }
  specify { expect(tri.judgment(1,0,0)).to eq "三角形じゃないです＞＜" }
  specify { expect(tri.judgment(1,0,1)).to eq "三角形じゃないです＞＜" }
  specify { expect(tri.judgment(1,1,0)).to eq "三角形じゃないです＞＜" }
  specify { expect(tri.judgment(-1,-1,-1)).to eq "三角形じゃないです＞＜" }

  # 三角不等式を満たさない場合は三角形じゃない
  specify { expect(tri.judgment(1,1,2)).to eq "三角形じゃないです＞＜" }
  specify { expect(tri.judgment(1,2,3)).to eq "三角形じゃないです＞＜" }
  specify { expect(tri.judgment(9,2,3)).to eq "三角形じゃないです＞＜" }
  specify { expect(tri.judgment(5,9,3)).to eq "三角形じゃないです＞＜" }
  specify { expect(tri.judgment(5,1,9)).to eq "三角形じゃないです＞＜" }

  # 正三角形
  specify { expect(tri.judgment(1,1,1)).to eq "正三角形ですね！" }

  # 直角二等辺三角形
  # 米整数だけで表現できないので除外

  # 二等辺三角形
  specify { expect(tri.judgment(2,2,1)).to eq "二等辺三角形ですね！" }
  specify { expect(tri.judgment(1,2,2)).to eq "二等辺三角形ですね！" }
  specify { expect(tri.judgment(2,1,2)).to eq "二等辺三角形ですね！" }

  # 直角三角形
  specify { expect(tri.judgment(3,4,5)).to eq "直角三角形ですね！" }
  specify { expect(tri.judgment(4,5,3)).to eq "直角三角形ですね！" }
  specify { expect(tri.judgment(5,3,4)).to eq "直角三角形ですね！" }
  specify { expect(tri.judgment(5,12,13)).to eq "直角三角形ですね！" }
  specify { expect(tri.judgment(12,13,5)).to eq "直角三角形ですね！" }
  specify { expect(tri.judgment(13,5,12)).to eq "直角三角形ですね！" }

  # 不等辺三角形
  specify { expect(tri.judgment(2,3,4)).to eq "不等辺三角形ですね！" }
  specify { expect(tri.judgment(5,8,4)).to eq "不等辺三角形ですね！" }
  specify { expect(tri.judgment(8,4,5)).to eq "不等辺三角形ですね！" }
  specify { expect(tri.judgment(4,5,8)).to eq "不等辺三角形ですね！" }

end
