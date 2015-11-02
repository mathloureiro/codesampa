class Admin::ContentsController < Admin::AdminController

  before_action :set_content, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @contents = Content.all
    respond_with(@contents, location: admin_contents_path)
  end

  def show
    respond_with(@content)
  end

  def new
    @content = Content.new
    respond_with(@content, location: admin_contents_path)
  end

  def edit
  end

  def create
    @content = Content.new(content_params)
    @content.user_id = current_user.id
    @content.save
    respond_with(@content, location: admin_contents_path)
  end

  def update
    @content.update(content_params)
    respond_with(@content, location: admin_contents_path)
  end

  def destroy
    @content.destroy
    respond_with(@content, location: admin_contents_path)
  end

  private
    def set_content
      @content = Content.find(params[:id])
    end

    def content_params
      params.require(:content).permit(:title, :content, :youtube_url, :fiat, :user_id, :concept_id, :icon)
    end
end
