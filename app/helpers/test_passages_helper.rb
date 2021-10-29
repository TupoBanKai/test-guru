module TestPassagesHelper
  CHECK_NUMBER = 85

  def set_color
    if success?
      "color:green"
    else
      "color:red"
    end
  end

  def set_state
    if success?
      "You passed the test"
    else
      "You did not passed the test"
    end
  end

  def success?
    if @count >= CHECK_NUMBER
      true
    else
      false
    end
  end

end
