class Product < ActiveRecord::Base
  default_scope :order => 'title'
  
  
  validates :title, :description, :image_url, :presence => true
  #:presence => {:presence => true, :message => 'have not been mentionned.'}
  #cette version change le message d'erreur
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true
  #validates :title, :length => {:minimum => 10}
  validates :image_url, :format => {
    :with => %r{\.(gif|jpg|png)$}i,
    :message => 'must be a URL for GIF, JPG or PNG image.' }
end
