class TestsController < ApplicationController
  before_action :find_test, only: [:show]
  def index
    @collection = Test.all
  end

  def show
    @question_collection = @test.questions
  end

  def edit
  end

  def new
  end

  def create
  end

  def destroy
  end

  private

  def find_test
    @test = Test.find(params[:id])
  end

end
