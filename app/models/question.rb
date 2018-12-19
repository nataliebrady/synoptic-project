class Question < ApplicationRecord
  belongs_to :quiz
  has_many :answers, dependent: :destroy
  accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true
  validates :question_title, presence: true, length: { maximum: 250 }
  validates :position, presence: true
  validates :answers, presence: true, length: { maximum: 250}
  validates_associated :answers
  validate :one_answer_only
  validate :minimum_answers
  validate :maximum_answers

  private

  def one_answer_only
  	if self.answers.map{|i| i.correct_answer == true}.count(true) > 1 || self.answers.map{|i| i.correct_answer == true}.count(true) < 1
  		errors.add(:answers, "One correct answer only")
  	end
  end

  def minimum_answers
    errors.add(:answers, "You need 3 or more answers (no more than 5)") if answers.size < 3
  end

  def maximum_answers
    errors.add(:answers, "You can only have a maximum of 5 answers (no less than 3) ") if answers.size > 5
  end

end
