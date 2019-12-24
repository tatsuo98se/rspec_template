require 'roo'

describe "when empty" do
    before do
      @target = Roo::Excelx.new('./spec/fixture/testdata.xlsx')
    end
  
    it "should not be empty" do
      expect(@target).not_to be_nil
    end

    it "'s a1 cell has string 'a1'" do
      expect(@target.sheet(0).cell('A',1)).to eq('A1')
    end

    after do
      @empty_array = nil
    end
  end