require('rspec')
require('my_garden')

# describe(MyGarden) do
#   describe("#my_fetch") do
#     it("retrieves a stored value by its key") do
#       test_hash = MyGarden.new("thyme", 1)
#       expect(test_hash.my_fetch("thyme")).to(eq(1))
#     end
#
#   end
# end

describe(MyGarden) do
  describe("#my_store") do
    it("stores keys and values into a hash") do
        test_hash = MyGarden.new()
        expect(test_hash.my_store("rosemary", 4)).to(eq({"rosemary"=>4}))
      end
    end
  end
