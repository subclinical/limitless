class VisitorsController < ApplicationController
  def info
    render 'info'
  end

  def gallery
      s3 = Aws::S3::Resource.new(
          region:               ENV["AWS_REGION"], #or any other region
          access_key_id:        ENV["AWS_ACCESS_KEY_ID"],
          secret_access_key:    ENV["AWS_SECRET_ACCESS_KEY"]
        )
      bucket = s3.bucket("limitless-bar-and-grill")
      @arr = [];
      bucket.objects(prefix: "gallery/").each do |obj|
        @arr << obj.public_url unless /gallery\/$/.match(obj.public_url)
      end
    render 'gallery'
  end

  def about
    render 'about'
  end

  def contact
    render 'contact'
  end
end
