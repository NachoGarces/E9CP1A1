class Dog
  def initialize(perro)
    @nombre = perro[:nombre]
    @raza = perro[:raza]
    @color = perro[:color]
  end
  def ladrar
    puts "#{@nombre} esta ladrando"
    puts "Si! ese #{@raza} de color #{@color}"
  end
end
propiedades = { nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café' }

perrito = Dog.new(propiedades)
perrito.ladrar
