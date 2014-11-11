class Subject < ActiveRecord::Base
  has_many :image_collections, dependent: :destroy
  has_many :images, through: :image_collections

  validates_uniqueness_of :uid
  validates_presence_of :uid

  def self.find_or_create(params_for_subject, datetime)
    subject = Subject.find_by uid: params_for_subject[:uid]
    if subject.nil?
      subject = Subject.create(params_for_subject)
      subject.date = DateTime.strptime(datetime, '%s') unless datetime.nil?
    end
    subject
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |object|
        csv << object.attributes.values_at(*column_names)
      end
    end
  end
end
