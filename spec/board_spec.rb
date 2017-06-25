require 'board'

describe Board do

  describe "::new" do
    subject { Board.new }

    it "creates a new Board" do
      expect(subject).to be_instance_of(Board)
    end
  end

  describe "#build" do
    it "constructs a 3x3 Grid" do
      subject.build
      expect(subject.grid). to eq [["_|_|_"], ["_|_|_"], ["_|_|_"]]
    end
  end

end
