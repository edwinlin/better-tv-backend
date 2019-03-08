class UserShowSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :tvshow_id, :ext_tvmaze_id
end
