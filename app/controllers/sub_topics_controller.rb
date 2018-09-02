class SubTopicsController < ApplicationController
  before_action :set_sub_topic, only: [:show, :edit, :update, :destroy]

  # GET /sub_topics
  # GET /sub_topics.json
  def index
    @sub_topics = SubTopic.all
  end

  # GET /sub_topics/1
  # GET /sub_topics/1.json
  def show
  end

  # GET /sub_topics/new
  def new
    @sub_topic = SubTopic.new
  end

  # GET /sub_topics/1/edit
  def edit
  end

  # POST /sub_topics
  # POST /sub_topics.json
  def create
    @sub_topic = SubTopic.new(sub_topic_params)

    respond_to do |format|
      if @sub_topic.save
        format.html { redirect_to @sub_topic, notice: 'Sub topic was successfully created.' }
        format.json { render :show, status: :created, location: @sub_topic }
      else
        format.html { render :new }
        format.json { render json: @sub_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_topics/1
  # PATCH/PUT /sub_topics/1.json
  def update
    respond_to do |format|
      if @sub_topic.update(sub_topic_params)
        format.html { redirect_to @sub_topic, notice: 'Sub topic was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_topic }
      else
        format.html { render :edit }
        format.json { render json: @sub_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_topics/1
  # DELETE /sub_topics/1.json
  def destroy
    @sub_topic.destroy
    respond_to do |format|
      format.html { redirect_to sub_topics_url, notice: 'Sub topic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_topic
      @sub_topic = SubTopic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_topic_params
      params.require(:sub_topic).permit(:title, :description, :topic_id)
    end
end
