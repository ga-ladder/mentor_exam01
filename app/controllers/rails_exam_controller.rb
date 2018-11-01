class RailsExamController < ApplicationController
  def index
  end

  def errors
    @author = Author.created_after("2018-01-01 00:00:00").includes(:books)
    backend
  end

  def backend
    # @authors = Author.all.includes(:books)
    @books = Book.all.order('price DESC')
    @authors = []
    @books.each do |book|
      if !( @authors.include?(book.author) )
        @authors << book.author
      end
    end
  end

  def backend02
    @authors = Author.all
    @book = Book.new
  end
end
