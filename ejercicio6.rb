class Product
  attr_accessor :name, *:tallas
  def initialize(name, *tallas)
    @name = name
    @tallas = tallas.map(&:to_i)
  end

  def prom
    @tallas.inject(&:+) / @tallas.size.to_f
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines }
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

products_list.each do |p|
  print "El promedio de precio de #{p.name} es: "
  puts p.prom
end
