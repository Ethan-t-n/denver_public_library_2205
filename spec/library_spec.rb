require './lib/library'
require './lib/author'

RSpec.describe Library do
  before :each do

  @dpl = Library.new("Denver Public Library")
  @charlotte_bronte = Author.new({first_name: "Charlotte",
                                  last_name: "Bronte"})
  @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
  @professor = @charlotte_bronte.write("The Professor", "1857")
  @villette = @charlotte_bronte.write("Villette", "1853")
  @harper_lee = Author.new({first_name: "Harper",
                            last_name: "Lee"})
  @mockingbird = @harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
  end

    it "exists" do

      expect(@dpl.name).to eq("Denver Public Library")

    end
end