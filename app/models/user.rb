class User < ActiveRecord::Base
  has_many :enrollments
  before_destroy :ensure_not_referenced_by_any_enrollments
  validates :name, presence: true, uniqueness: true
  has_secure_password
  after_destroy :ensure_an_admin_remains

  private
    # ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_enrollments
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line Items present')
        return false
      end
    end

  private
    def ensure_an_admin_remains
      if User.count.zero?
        raise "Can't delete last user"
      end
    end
end
