class SubscriptionTran < ActiveRecord::Base
  attr_accessible :amount, :chit_scheme_id, :subscriber_id
  scope :active, -> { where(is_deleted: false) }
scope :inactive, -> { where(is_deleted: true) }


after_save :Assign_user_to_subscriber


def Assign_user_to_subscriber

  user=User.new
         puts"*******"
         user.username=@staff.staff_code
         user.user_first_name=@staff.first_name
         user.user_last_name=@staff.last_name
         user.user_email_id=@staff.email_id
         user.mobile_no=@staff.mobile_no
         user.password=user.username+'123'
         password_confirmation=user.username+'123'
         user.save(:validate=>false)
         user.roles.create(:title=>@staff.role)

  end



end



