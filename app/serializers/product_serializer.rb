class ProductSerializer < ActiveModel::Serializer
    include Rails.application.routes.url_helpers

  attributes :id, :name, :price, :description, :picture
 def picture
    if object.picture.attached?
        {
          url: rails_blob_url(object.picture)
        }
      end
  end
end
