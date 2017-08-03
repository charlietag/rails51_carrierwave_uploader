class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #def upload(f="")
  #  uploaded_io = f

  #  #uploaded_io = params[:member][:folder]
  #  File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
  #    file.write(uploaded_io.read)
  #  end
  #  uploaded_io.original_filename
  #end
end
