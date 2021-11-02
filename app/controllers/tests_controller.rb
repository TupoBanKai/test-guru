class TestsController < ApplicationController
  before_action :find_test, only: [:show, :start]
  before_action :set_user, only: :start
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
    @user.tests.push(@test)
    redirect_to @user.test_passage(@test)
  end

  private

  def find_test
    @test = Test.find(params[:id])
  end

  def set_user
    @user = User.first
  end

end
