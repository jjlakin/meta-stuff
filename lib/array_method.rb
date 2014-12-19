class Array

  def my_push(push_object)
    array_count = self.count
    self[array_count] = push_object
    self
  end

  def my_pop
    array_count = self.count - 1
    self.delete_at(array_count)
  end

  def my_shift
    self.delete_at(0)
  end

  def my_slice(slice_point)
    self[slice_point]
  end

  def my_slice!(slice_point)
    new_array = self[slice_point]
    self - new_array
    new_array
  end

  def my_inject(v = nil)
    i = 0
    return 'wrong class' if self.class != Array
    while self[i]
      (v = self[0]; i +=1) if v == nil 
      v = yield v, self[i]
      i += 1 
    end
    
    return v

    # v = yield v, self[i]
    # i += 1 
    # v = yield v, self[i]
    # i += 1 
    # v
    # v = yield v, self[i]
    # p v, i



    # copy = self.dup
    # v ==
    # while self[]
    
  end

    
  

  # def my_each
  #   self.index = length
  #   yield
  #   my_each[]
  # end

end
