class Path
  attr_accessor :path

  def intialize(path) # Notice the power of an objects
    @path = path      # properties. Because the object stores
                      # the path variable, we no longer need to
                      # pass it around.
  end                 

  def normalize_path
    "#{"#{Dir.pwd}/" if relative_path?(path)}#{path}"
  end

  def relative_path?
    !absolute_path?(path)
  end

  def absolute_path?
    path.start_with?("/")
  end
end