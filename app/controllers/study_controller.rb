class StudyController < ApplicationController
  def new
  end
  def index
    @study = Study.new
  end
end
