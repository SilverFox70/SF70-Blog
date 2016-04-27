class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy

  def previous_two_id(id)
    first_prev = self.class.where("id < ?", id).last.id
    self.class.where("id < ?", id).last.id
  end
end
