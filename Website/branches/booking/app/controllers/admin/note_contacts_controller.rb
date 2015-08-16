class Admin::NoteContactsController < ApplicationController
  before_action :set_admin_note_contact, only: [:show, :edit, :update, :destroy]

  # GET /admin/note_contacts
  # GET /admin/note_contacts.json
  def index
    @admin_note_contacts = Admin::NoteContact.all
  end

  # GET /admin/note_contacts/1
  # GET /admin/note_contacts/1.json
  def show
  end

  # GET /admin/note_contacts/new
  def new
    @admin_note_contact = Admin::NoteContact.new
  end

  # GET /admin/note_contacts/1/edit
  def edit
  end

  # POST /admin/note_contacts
  # POST /admin/note_contacts.json
  def create
    @admin_note_contact = Admin::NoteContact.new(admin_note_contact_params)

    respond_to do |format|
      if @admin_note_contact.save
        format.html { redirect_to @admin_note_contact, notice: 'Note contact was successfully created.' }
        format.json { render :show, status: :created, location: @admin_note_contact }
      else
        format.html { render :new }
        format.json { render json: @admin_note_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/note_contacts/1
  # PATCH/PUT /admin/note_contacts/1.json
  def update
    respond_to do |format|
      if @admin_note_contact.update(admin_note_contact_params)
        format.html { redirect_to @admin_note_contact, notice: 'Note contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_note_contact }
      else
        format.html { render :edit }
        format.json { render json: @admin_note_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/note_contacts/1
  # DELETE /admin/note_contacts/1.json
  def destroy
    @admin_note_contact.destroy
    respond_to do |format|
      format.html { redirect_to admin_note_contacts_url, notice: 'Note contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_note_contact
      @admin_note_contact = Admin::NoteContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_note_contact_params
      params.require(:admin_note_contact).permit(:admin_note_id, :contact_id)
    end
end
