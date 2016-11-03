# encoding: utf-8

class Movie < Product
  def update(options)
    @title = options[:title]
    @year = options[:year]
    @director_name = options[:director_name]
  end

  def info
    "Фильм \"#{@title}\", реж. #{@director_name} (#{@year})"
  end
end