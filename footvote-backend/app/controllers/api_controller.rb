class ApiController < ApplicationController
  def index
    render json: { hello: "API footvote is working" }, root: "hello", adapter: :json
  end
end
