Time.class_eval do
  def round(seconds = 60)
    Time.at((self.to_f / seconds).round * seconds)
  end
end
