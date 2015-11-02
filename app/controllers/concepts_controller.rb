class ConceptsController < ApplicationController
  before_action :set_concept, only: [:show]

  respond_to :html

  def show
    @contents = Content.where(concept_id: @concept.id).order('fiat ASC')
    @course = Course.find(params[:course_id])
    respond_with(@concept)
  end

  private
    def set_concept
      @concept = Concept.find(params[:id])
    end
end