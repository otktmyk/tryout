require File.expand_path(File.dirname(__FILE__) + '/../eratos')

describe Eratos do
  era = Eratos.new
  specify { expect(era.search(30)).to eq "2, 3, 5, 7, 11, 13, 17, 19, 23, 29" }
end
