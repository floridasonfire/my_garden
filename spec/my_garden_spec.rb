require('rspec')
require('my_garden')

describe(MyGarden) do
  describe("#fetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyGarden.new("thyme", 1)
      expect(test_hash.my_fetch("thyme")).to(eq(1))
    end
  end
end
