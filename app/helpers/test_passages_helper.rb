module TestPassagesHelper
  def set_color(count)
    if count >= 85
      "color:green"
    else
      "color:red"
    end
  end

  def set_state(count)
    if count >= 85
      "You passed the test"
    else
      "You did not passed the test"
    end
  end

end
