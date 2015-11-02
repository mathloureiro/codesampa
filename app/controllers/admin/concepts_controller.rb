class Admin::ConceptsController < Admin::AdminController
  before_action :set_concept, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @concepts = Concept.all
    respond_with(@concepts)
  end

  def show
    @contents = Content.where(concept_id: @concept.id).order('fiat asc')
    respond_with(@concept)
  end

  def new
    @concept = Concept.new
    respond_with(@concept, location: admin_concepts_path)
  end

  def edit
  end

  def create
    @concept = Concept.new(concept_params)
    @concept.user_id = current_user.id
    @concept.save
    respond_with(@concept, location: admin_concepts_path)
  end

  def update
    @concept.update(concept_params)
    respond_with(@concept, location: admin_concepts_path)
  end

  def destroy
    @concept.destroy
    respond_with(@concept, location: admin_concepts_path)
  end

  private
    def set_concept
      @concept = Concept.find(params[:id])
    end

    def concept_params
      params.require(:concept).permit(:name, :fiat, :user_id, :course_id)
    end
end
