class TokensController < ApplicationController
  def show
    render json: {hello: "world!"}
  end
end
