class TvshowSerializer < ActiveModel::Serializer
  attributes :id, :name, :likes, :tvmaze_id
end
