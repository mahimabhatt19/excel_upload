class UploadsController < ApplicationController
  require 'roo'

  def new
  end

  def create
    # Handle file upload logic here
    if params[:file].present?
      uploaded_file = params[:file]

    # Open the spreadsheet using Roo
    spreadsheet = Roo::Spreadsheet.open(uploaded_file.path)

    # Extract the header row (assuming it's the first row)
    headers = spreadsheet.row(1)
      

      # Extract the data from all rows starting from the second row
      @sheet_data = []
      (2..spreadsheet.last_row).each do |i|
        row_data = Hash[[headers, spreadsheet.row(i)].transpose]
        @sheet_data << row_data
      end
      flash[:notice] = "File uploaded successfully!"
      #puts "File uploaded successfully!"
      redirect_to uploads_path
    else
      flash[:alert] = "Please choose a file to upload."
      render :new
    end
  end

  def show
    @sheet_data = session[:sheet_data]
    
  end
end
