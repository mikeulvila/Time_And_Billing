class Customer < Account
  has_many :time_entries

  scope :premier, -> { where("employees > ?", 50) }
  scope :newest, -> { order("created_at DESC") }
end
