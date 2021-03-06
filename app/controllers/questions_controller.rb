class QuestionsController < ApplicationController
  before_action :get_questions, only: [:index]
  before_action :get_questino, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @question = Question.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def get_questions
    @questions = Question.all
  end

  def get_question
    @question = Question.find_by(id: params[:id])
  end

  def question_params
  params.require(:question).permit(:title, :content, :is_answered, :chosen_answer_id).merge(user_id: current_user.id)
  end
end