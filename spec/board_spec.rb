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

# end

# describe '#discounter_a' do
#   it 'discounts the Price of the First Example' do
#     x = Order.new
#     p = Pricer.new
#     d = Discounter.new
#     x.clock_number('WNP/SWCL001/010')
#     x.standard_delivery_companies('Disney', 'Discovery', 'Viacom')
#     x.express_delivery_companies('Horse & County')
#     p.pricing(x)
#     d.discounter_a(x)
#     d.discounter_b(x)
#     expect(x.price).to eq 50
#     expect(x.discount_price).to eq 45
#   end
# end
