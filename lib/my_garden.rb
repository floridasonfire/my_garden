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

  define_method(:my_fetch) do |plant_key|
    plant_array = @my_hash.to_a()
    plant_array.flatten!()

    if plant_array.include?(plant_key)
      plant_key_index=plant_array.index(plant_key)
      number_index=plant_key_index+1
      plant_array.at(number_index)
      #=make stuff happen
    else
      "That's not in your garden!"
    end
    
  end

end
