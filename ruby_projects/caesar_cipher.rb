def caesar_cipher(string, offset)
  result = ''
  string.each_char do |c|
    if c.match(/[a-zA-Z]/)
      base = c.ord < 91 ? 65 : 97
      result += ((c.ord - base + offset) % 26 + base).chr
    else
      result += c
    end
  end
  result
end

output = caesar_cipher('Hello', 5)
puts(output)
