class Box < ActiveRecord::Base
  belongs_to :user
  belongs_to :order
  has_many :histories
  has_one :warehouse_position


  has_attached_file :avatar, 
    :storage => :s3, 
    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }, 
    :styles => { :medium => "300x300>", :thumb => "100x100>", :icon => "25x25>" }, 
    :default_url => ActionController::Base.helpers.asset_path('/static_pages/boximg2.png')

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def default_image_url
    view_context.image_path('/static_pages/boximg2.png')
  end
  
  def s3_credentials
    {:bucket => ENV['S3_BUCKET'], 
      :access_key_id => ENV['ACCESS_KEY_ID'], 
      :secret_access_key =>ENV['SECRET_ACCESS_KEY']}
  end
end
