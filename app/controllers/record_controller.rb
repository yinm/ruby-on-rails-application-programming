class RecordController < ApplicationController
  def keywd
    @search = SearchKeyword.new
  end

  def keywd_process
    @search = SearchKeyword.new(params.require(:search_keyword).permit(:keyword))
    if @search.valid?
      render plain: @search.keyword
    else
      render plain: @search.errors.full_messages[0]
    end
  end
end
