require 'json'

def translate_key(key)
  case key
  when 'number'
    'Порядковый номер'
  when 'title'
    'Название элемента'
  when 'scientist'
    'Первооткрыватель'
  when 'density'
    'Плотность'
  else
    'Ошибка чтения JSON файла'
  end
end


date = File.read('data/full_elements.json')
data_hash = JSON.parse(date)

puts "У нас есть #{data_hash.keys.size} элементов:"
puts data_hash.keys

input = gets.chomp

if data_hash.key?(input)
  puts "Элемент - #{input}"

  data_hash[input].each do |item|
    puts "#{translate_key(item[0])}: #{item[1]}"
  end
end
