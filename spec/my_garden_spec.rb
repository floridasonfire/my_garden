require('rspec')
require('my_garden')

describe(MyGarden) do
  describe("#my_store") do
    it("stores keys and values into a hash") do
      test_hash = MyGarden.new()
      expect(test_hash.my_store("rosemary", 4)).to(eq({"rosemary"=>4}))
    end
    it("stores multiple keys and values into a hash") do
      test_hash = MyGarden.new()
      test_hash.my_store("rosemary", 4)
      expect(test_hash.my_store("thyme", 6)).to(eq({"rosemary"=>4, "thyme"=>6}))
    end
  end
end

describe(MyGarden) do
  describe("#my_fetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyGarden.new()
      test_hash.my_store("thyme", 1)
      expect(test_hash.my_fetch("thyme")).to(eq(1))
    end
    it("retrieves multiple store values by their keys") do
      test_hash = MyGarden.new()
      test_hash.my_store("thyme", 1)
      test_hash.my_store("rosemary", 4)
      test_hash.my_store("oregano", 5)
      expect(test_hash.my_fetch("rosemary")).to(eq(4))
    end
    it("returns that a plant isn't in your garden if it's not in the key") do
      test_hash = MyGarden.new()
      test_hash.my_store("thyme", 1)
      expect(test_hash.my_fetch("sage")).to(eq("That's not in your garden!"))
    end
  end
end
