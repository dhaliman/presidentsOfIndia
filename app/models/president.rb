class President < ApplicationRecord

  has_attached_file :picture
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  def picture_url
    self.picture.url
  end

  def next_id
    self.class.where('id > ?', self.id).pluck(:id).first
  end

  def prev_id
    self.class.where('id < ?', self.id).pluck(:id).first
  end
end
