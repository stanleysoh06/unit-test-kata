class TwoFer
  def say(input = nil)
    if input
      return "One for #{input}, one for me."
    end

    'One for you, one for me.'
  end
end