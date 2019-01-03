class Product
  attr_accessor :name, *:tallas
  def initialize(name, *tallas)
    @name = name
    @tallas = tallas.map(&:to_i)
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines }
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

nuevo_catalogo = []
products_list.each do |p|
  largo = p.tallas.size - 2
  c = p.name, p.tallas.slice(0..largo)
  nuevo_catalogo << c
end

File.open('nuevo_catalogo.txt', 'a') { |file| file.print nuevo_catalogo }
