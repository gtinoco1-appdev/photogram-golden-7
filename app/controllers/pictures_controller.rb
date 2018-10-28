class PicturesController < ApplicationController
  def index
    @photo_list = Photo.all
    render("pic_templates/all_photos.html.erb")
  end

  def new_form
    render("pic_templates/new_photo_form.html.erb")
  end

  def create_row
    p = Photo.new
    p.source = params.fetch("the_source")
    p.caption = params.fetch("the_caption")
    p.save
    render("pic_templates/new_photo_results.html.erb")
  end

  def show_details
    the_id = params.fetch("photo_id")
    @the_photo = Photo.find(the_id)
    render("pic_templates/photo_details.html.erb")
  end

  def edit_form
    @the_id = params.fetch("photo_id")
    render("pic_templates/edit_form.html.erb")
  end

  def update_row
    render("pic_templates/updated_photo.html.erb")
  end

  def delete_row
    render("pic_templates/deleted_photo.html.erb")
  end
end
