# == Schema Information
#
# Table name: responses
#
#  id          :bigint(8)        not null, primary key
#  user_id     :integer
#  answer_id   :integer
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Response < ApplicationRecord
  validate :not_duplicate_response
  
  belongs_to :respondent,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :User
  
  belongs_to :answer,
  primary_key: :id,
  foreign_key: :answer_id,
  class_name: :AnswerChoice
  
  has_one :question,
  through: :answer,
  source: :question 
  
  def not_duplicate_response
    errors[:body] << "respondent already answered"
  end
  
  def sibling_responses
    self.question.responses.where.not(id: self.id)
  end
  
  def respondent_already_answered?
    sibling_responses.exists?(user_id: self.user_id)
  end 
end
