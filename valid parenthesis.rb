def is_valid(s)
  stack = []
  mapping = { ')' => '(', '}' => '{', ']' => '[' }

  s.each_char do |char|
    if mapping[char]
      top_element = stack.empty? ? '#' : stack.pop
      return false if top_element != mapping[char]
    else
      stack.push(char)
    end
  end
  
  stack.empty?
end
