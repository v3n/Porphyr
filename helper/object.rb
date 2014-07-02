class Object
  def respond

  end

  def describe
    ("This is a " + self.class.name.gsub(/^.*::/, '').downcase + ".")
  end
end