# frozen_string_literal: true

class ApiController < ApplicationController
  def index
    @slogans = SloganResource.new(Slogan.all).serialize
    json_response(@slogans)
  end
end
