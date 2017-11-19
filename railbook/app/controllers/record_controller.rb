class RecordController < ApplicationController
  def find
    @books = Book.find([2, 5, 10])
    render 'hello/list'
  end

  def find_by
    @book = Book.find_by(publish: '技術評論社')
    render 'books/show'
  end

  def find_by2
    @book = Book.find_by(publish: '技術評論社', price: 2980)
    render 'books/show'
  end

  def where
    @books = Book.where(publish: '技術評論社')
    render 'hello/list'
  end

  def where2
    @books = Book.where(publish: '技術評論社', price: 2980)
    render 'hello/list'
  end

  def where3
    @books = Book.where(published: '2016-06-01'..'2016-12-31')
    render 'hello/list'
  end
end
