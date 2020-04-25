class Api::V1::TermsController < ApplicationController
  def index
    render json: TermSerializer.new(Term.all)
  end
end
