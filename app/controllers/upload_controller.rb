class UploadController < ApplicationController
  # before_filter :authenticate_user, :only => [:create]
  # before_filter :save_login_state, :only => [:create]
  def create
    upload_io = params[:file]
    random = 'profile_pic_'+ SecureRandom.hex + '' + uploaded_io.original_filename.gsub("_", "").gsub("-", "")
    File.open(Rails.root.join('vendor','assets','images',random),'wb') do |file|
      file.write(upload_io.read)
    end
    render(json: '/assets/'+random)
  end
end
