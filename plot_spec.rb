require_relative 'plot.rb'
require 'active_support/core_ext/kernel/reporting'

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

  context "validate plot" do
    it "check output with file input1.txt" do
      plot = Plot.new('input1.txt').output
      expect(plot[0]). to eq nil
      expect(plot[1]). to eq nil
      expect(plot[2]). to eq "  #"
      expect(plot[3]). to eq "  #"
      expect(plot[4]). to eq "  #"
      expect(plot[5]). to eq "  #"
      expect(plot[6]). to eq "  #"
      expect(plot[7]). to eq "  #"
      expect(plot[8]). to eq "  ###########"
    end

    it "check output with file input2.txt" do
    end

    it "check output with file input3.txt" do
    end
  end

end
