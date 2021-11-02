class TestsController < ApplicationController

  before_action :find_test, only: [:show, :start, :desrtoy, :update, :edit]

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
    @test.destroy
    redirect_to tests_path
  end

  def start
    current_user.tests.push(@test)
    redirect_to current_user.test_passage(@test)
  end

  private

  def find_test
    @test = Test.find(params[:id])
  end

end
