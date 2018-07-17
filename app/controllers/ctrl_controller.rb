class CtrlController < ApplicationController
  def para
    render plain: 'idパラメーター:' + params[:id]
  end

  def para_array
    render plain: 'categoryパラメーター:' + params[:category].inspect
  end

  def req_head
    render plain: request.headers['User-Agent']
  end

  def req_head2
    @headers = request.headers
  end

  def double_render
    @book = Book.find(6)
    if @book.reviews.empty?
      render 'simple_info' and return
    end
    render 'details_info'
  end

  def plain_render
    render inline: 'リクエスト情報: <%= debug request.headers %>'
  end

  def redirect
    redirect_to books_path
  end
end
