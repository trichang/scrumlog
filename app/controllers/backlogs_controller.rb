
class BacklogsController < ApplicationController
  # GET /backlogs
  # GET /backlogs.json
  def index
    @backlogs = Backlog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @backlogs }
    end
  end

  # GET /backlogs/1
  # GET /backlogs/1.json
  def show
    @backlog = Backlog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @backlog }
    end
  end

  # GET /backlogs/new
  # GET /backlogs/new.json
  def new
    @backlog = Backlog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @backlog }
    end
  end

  # GET /backlogs/1/edit
  def edit
    @backlog = Backlog.find(params[:id])
  end

  # POST /backlogs
  # POST /backlogs.json
  def create
    @backlog = Backlog.new(params[:backlog])

    respond_to do |format|
      if @backlog.save
        format.html { redirect_to @backlog, notice: 'Backlog was successfully created.' }
        format.json { render json: @backlog, status: :created, location: @backlog }
      else
        format.html { render action: "new" }
        format.json { render json: @backlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /backlogs/1
  # PUT /backlogs/1.json
  def update
    @backlog = Backlog.find(params[:id])

    respond_to do |format|
      if @backlog.update_attributes(params[:backlog])
        format.html { redirect_to @backlog, notice: 'Backlog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @backlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /backlogs/1
  # DELETE /backlogs/1.json
  def destroy
    @backlog = Backlog.find(params[:id])
    @backlog.destroy

    respond_to do |format|
      format.html { redirect_to backlogs_url }
      format.json { head :no_content }
    end
  end
end
