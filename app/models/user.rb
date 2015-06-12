class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  has_many :invoices , :class_name => "Invoice", :foreign_key => "user_id"
  has_many :quotes , :class_name => "Quote", :foreign_key => "user_id"
  has_many :projects , :class_name => "Project", :foreign_key => "user_id"

end
