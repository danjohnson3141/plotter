require './plot.rb'

describe "Plot" do
  it "check right? method" do
    plot = Plot.new('input1.txt')
    expect(plot.right?).to eq true
    plot = Plot.new('input3.txt')
    expect(plot.right?).to eq false
  end

  it "check x1_y1, x2_y2 attributes" do
    plot = Plot.new('input1.txt')
    expect(plot.x1_y1).to eq [2, 2]
    expect(plot.x2_y2).to eq [11, 8]
    
    plot = Plot.new('input2.txt')
    expect(plot.x1_y1).to eq [13, 4]
    expect(plot.x2_y2).to eq [20, 8]
    
    plot = Plot.new('input3.txt')
    expect(plot.x1_y1).to eq [13, 0]
    expect(plot.x2_y2).to eq [3, 3]
  end

end
