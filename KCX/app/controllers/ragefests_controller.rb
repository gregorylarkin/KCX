class RagefestsController < ApplicationController
  # GET /ragefests
  # GET /ragefests.json
  def index
    @ragefests = Ragefest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ragefests }
    end
  end

  # GET /ragefests/1
  # GET /ragefests/1.json
  def show
    @ragefest = Ragefest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ragefest }
    end
  end

  # GET /ragefests/new
  # GET /ragefests/new.json
  def new
    @ragefest = Ragefest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ragefest }
    end
  end

  # GET /ragefests/1/edit
  def edit
    @ragefest = Ragefest.find(params[:id])
  end

  # POST /ragefests
  # POST /ragefests.json
  def create
    @ragefest = Ragefest.new(params[:ragefest])

    respond_to do |format|
      if @ragefest.save
        format.html { redirect_to @ragefest, notice: 'Ragefest was successfully created.' }
        format.json { render json: @ragefest, status: :created, location: @ragefest }
      else
        format.html { render action: "new" }
        format.json { render json: @ragefest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ragefests/1
  # PUT /ragefests/1.json
  def update
    @ragefest = Ragefest.find(params[:id])

    respond_to do |format|
      if @ragefest.update_attributes(params[:ragefest])
        format.html { redirect_to @ragefest, notice: 'Ragefest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ragefest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ragefests/1
  # DELETE /ragefests/1.json
  def destroy
    @ragefest = Ragefest.find(params[:id])
    @ragefest.destroy

    respond_to do |format|
      format.html { redirect_to ragefests_url }
      format.json { head :no_content }
    end
  end
end
