class String
  # https://www.ruby-forum.com/topic/57805
  # 
  # Wrap string by the given length, and join it with the given character.
  # The method doesn't distinguish between words, it will only work based on
  # the length. The method will also strip and whitespace.
  #
  def wrap(length = 80, character = $/)
    scan(/.{#{length}}|.+/).map { |x| x.strip }.join(character)
  end

  def word_wrap(col_width=80)
    gsub!( /(\S{#{col_width}})(?=\S)/, '\1 ' )
    gsub!( /(.{1,#{col_width}})(?:\s+|$)/, "\\1\n" )
  end
end