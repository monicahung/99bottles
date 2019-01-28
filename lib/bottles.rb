class Bottles
  INIT_BOTTLES = 99

  def verse(bottles)
    if bottles == 2
      <<~HEREDOC
      #{bottles} bottles of beer on the wall, #{bottles} bottles of beer.
      Take one down and pass it around, #{bottles - 1} bottle of beer on the wall.
      HEREDOC
    elsif bottles == 1
      <<~HEREDOC
      #{bottles} bottle of beer on the wall, #{bottles} bottle of beer.
      Take it down and pass it around, no more bottles of beer on the wall.
      HEREDOC
    elsif bottles == 0
      <<~HEREDOC
      No more bottles of beer on the wall, no more bottles of beer.
      Go to the store and buy some more, #{INIT_BOTTLES} bottles of beer on the wall.
      HEREDOC
    else
      <<~HEREDOC
      #{bottles} bottles of beer on the wall, #{bottles} bottles of beer.
      Take one down and pass it around, #{bottles - 1} bottles of beer on the wall.
      HEREDOC
    end
  end

  def verses(verse1, verse2)
    retstr = ""
    (verse1-verse2+1).times do |num|
      retstr = retstr + verse(verse1-num)
      if verse1-num != verse2
        retstr = retstr + "\n"
      end
    end
    retstr
  end

  def song
    verses(INIT_BOTTLES, 0)
  end
end
