class TestsController < ApplicationController
  before_action :find_test, only: [:show]
  def index
    @tests = Test.all
  end

  def show
    @question = @test.questions
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
