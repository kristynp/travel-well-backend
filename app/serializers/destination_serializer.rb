class DestinationSerializer
  include FastJsonapi::ObjectSerializer
<<<<<<< HEAD
  attributes :name, :country, :user_id, :notes, :images
  has_many :images, serializer: ImageSerializer, :comments, CommentSerializer
=======
  attributes :name, :country, :user_id, :notes, :images, :comments
  has_many :images, serializer: ImageSerializer
  has_many :images, serializer: CommentSerializer
>>>>>>> comment
end

