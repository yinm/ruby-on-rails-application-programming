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
end
