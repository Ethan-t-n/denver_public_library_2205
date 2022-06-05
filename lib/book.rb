class Book
  attr_reader :title,
    :author,
    :publication_date

  def initialize(info)
    @title = info[:title]
    @author = info[:author_first_name] + " " + info[:author_last_name]
    @publication_date = info[:publication_date]
    @publication_year = info[:publication_date][-4..-1]
  end

  def publication_year
    @publication_year
  end

end
