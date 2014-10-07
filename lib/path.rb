class Path
  attr_accessor :path

  def initialize(path) # Notice the power of an object's
    @path = path      # properties. Because the object stores
                      # the path variable, we no longer need to
                      # pass it around to all the other methods
                      # that rely on it.
  end                 

  def normalize_path
    "#{"#{Dir.pwd}/" if relative_path?}#{path}"
  end

  def relative_path?
    !absolute_path?
  end

  def absolute_path?
    path.start_with?("/")
  end
end