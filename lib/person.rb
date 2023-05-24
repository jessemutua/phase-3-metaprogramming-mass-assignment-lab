class Person
  # your code here

  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end

end
person_attributes = {
  name: "John",
  birthday: "1990-01-01",
  hair_color: "Brown",
  eye_color: "Blue",
  height: 180,
  weight: 75,
  handed: "Right",
  complexion: "Fair",
  t_shirt_size: "M",
  wrist_size: 18,
  glove_size: "L",
  pant_length: 32,
  pant_width: 34
}
person= Person.new(**person_attributes)
puts person.name

