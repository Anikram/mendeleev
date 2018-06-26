require 'json'

date = File.read('data/full_elements.json')
data_hash = JSON.parse(date)

puts " У нас есть #{data_hash.keys.size} элементов:"
puts data_hash.keys

input = gets.chomp

if data_hash.key?(input)
    puts "Элемент - #{input}"

    data_hash[input].each do |item|
      puts "#{item[0]}: #{item[1]}"
    end
end
