class QuestionsController < ApplicationController
  before_action :find_test, only [:index, :create, :new]
  before_action :find_question, only: [:show, :destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index
    @collection = @test.questions
  end

  def show
  end

  def new
  end

  def create
    @question = @test.questions.new(question_params)
    if question.save
      Render good
    else
      Render bad
    end

    render plain: @question.inspect
  end

  def destroy
    @question.delete
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def find_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:body, :test_id)
  end

  def rescue_with_question_not_found
    render plain: 'Question was not found'
  end

end
