require 'rspec'
require 'orange_tree'



describe "An orange tree's lifecycle: " do

  before(:each) do
    @orange_tree = OrangeTree.new
  end

  it "has these attributes" do
    expect(@orange_tree.height).to eql(1)
    expect(@orange_tree.age).to eql(0)
    expect(@orange_tree.lifespan).to eql(100)
    expect(@orange_tree.orange_count).to eql(0)
    expect(@orange_tree.bears_fruit_at_age).to eql(5)
  end

  it "has no fruit before 5 years" do
    4.times do 
      @orange_tree.one_year_passes
    end
    expect(@orange_tree.has_fruit?).to be(false)
  end

  it "has fruit after 5 years" do
    5.times do
      @orange_tree.one_year_passes
    end
    expect(@orange_tree.has_fruit?).to be(true)
  end

  it "produces 10 more oranges each year after the 5th year" do
    5.times do
      @orange_tree.one_year_passes
    end
    expect(@orange_tree.orange_count).to eql(10)
    @orange_tree.one_year_passes
    expect(@orange_tree.orange_count).to eql(20)
    @orange_tree.one_year_passes
    expect(@orange_tree.orange_count).to eql(30)
  end

  it "has one less orange each time you pick one" do
    5.times do
      @orange_tree.one_year_passes
    end
    expect(@orange_tree.pick_orange).to eql(9)
  end

  it "grows 1 foot each year" do
    @orange_tree.one_year_passes
    expect(@orange_tree.height).to eql(2)
  end

  it "is 101 feet tall at the end of its life" do
    100.times do
      @orange_tree.one_year_passes
    end
    expect(@orange_tree.height).to eql(101)
  end

  it "has a lifespan of 100 years" do
    100.times do
      @orange_tree.one_year_passes
    end
    expect(@orange_tree.end_of_life).to be(true)
  end

end



