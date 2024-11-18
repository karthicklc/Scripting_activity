def two_sum(nums, target)
  hash = {}
  
  nums.each_with_index do |num, index|
    complement = target - num
    if hash[complement]
      return [hash[complement], index]
    end
    hash[num] = index
  end
  
  []
end
