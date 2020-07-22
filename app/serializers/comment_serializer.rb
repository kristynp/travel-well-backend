class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description
end
