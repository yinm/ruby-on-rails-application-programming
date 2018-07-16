class CtrlController < ApplicationController
  def para
    render plain: 'idパラメーター:' + params[:id]
  end
end
