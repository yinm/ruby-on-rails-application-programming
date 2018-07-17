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
    redirect_back fallback_location: { controller: 'hello', action: 'index' }
  end

  def log
    logger.unknown('unknown')
    logger.fatal('fatal')
    logger.error('error')
    logger.warn('warn')
    logger.info('info')
    logger.debug('debug')
    render plain: 'ログはコンソール、またはログファイルから確認してください'
  end

  def cookie
    @email = cookies[:email]
  end

  def cookie_rec
    cookies[:email] = {
      value: params[:email],
      expires: 3.months.from_now,
      http_only: true,
    }

    render plain: 'クッキーを保存しました'
  end
end
