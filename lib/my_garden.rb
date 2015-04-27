class MyGarden
  define_method(:initialize) do
    # new_hash = Hash.new()
    # new_hash.store(plant_type, number)
    @my_hash =Hash.new()

  end

  define_method(:my_store) do |plant_type, number|
    @my_hash.store(plant_type, number)
    @plant_type = plant_type
    @number = number
    @my_hash
  end

  define_method(:my_fetch) do |plant_type|
    @number
  end

end
