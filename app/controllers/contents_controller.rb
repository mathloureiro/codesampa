class ContentsController < ApplicationController
  before_action :set_content, only: [:show, :edit, :update, :destroy]

  respond_to :html
  
  def show
    respond_with(@content)
  end

  private
    def set_content
      @content = Content.find(params[:id])
    end
end
