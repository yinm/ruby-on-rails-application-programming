class HelloController < ApplicationController
  def index
    render plain: 'hello world'
  end

  def view
    @msg = 'Hello World'
  end
end
