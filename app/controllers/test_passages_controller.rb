class TestPassagesController < ApplicationController
  before_action :find_test_passage, only: [:show, :update, :result]

  def show

  end

  def result
    @count = @test_passage.correct_answers.count / @test_passage.correct_answers.count * 100
  end

  def update
    @test_passage.accept!(params[:answer_ids])

    if @test_passage.completed?
      redirect_to result_test_passage_path(@test_passage)
    else
      render :show
    end
  end

  private

  def find_test_passage
    @test_passage = TestPassage.find(params[:id])
  end

end
