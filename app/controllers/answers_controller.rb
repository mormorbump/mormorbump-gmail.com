class AnswersController < ApplicationController
  def index
    @answers = current_user.answers
  end

  def create
    answer_params.each do |answer_param|
      answer = current_user.answers.build(choice: answer_param[:choice], question_id: answer_param[:question_id])
      answer.save
    end
    redirect_to answers_path
  end

  def answer_params
    params.require(:answers)
  end
end
