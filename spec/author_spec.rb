require './lib/book'
require './lib/author'


RSpec.describe Author do
  before :each do
    @charlotte_bronte = Author.new({first_name: "Charlotte",
                                    last_name: "Bronte"
                                    })

  end

  it "exists" do
    expect(@charlotte_bronte).to be_a(Author)
  end

  it "has a name" do
    expect(@charlotte_bronte.name).to eq("Charlotte Bronte")
  end

  it "has array of books" do
    expect(@charlotte_bronte.books).to eq([])
  end

  #managed to skip this ^ and came back 

  it "can write a Book and stores" do
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")

    expect(@jane_eyre).to be_instance_of(Book)
    expect(@jane_eyre.title).to eq("Jane Eyre")

    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    @villette = @charlotte_bronte.write("Villette", "1853")

    expect(@charlotte_bronte.books.count).to eq(2)
    expect(@charlotte_bronte.books).to eq([@jane_eyre, @villette])
  end



end
