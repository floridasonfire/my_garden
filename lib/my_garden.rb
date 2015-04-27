class MyGarden
  define_method(:initialize) do |plant_type, number|
    @plant_type = plant_type
    @number = number
  end

  define_method(:fetch) do |plant_type|
    @number
  end
end
