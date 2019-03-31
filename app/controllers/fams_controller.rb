class FamsController < ApplicationController
  def new
    @fam = Family.new
    @fam.users.build
  end

  def create
    @fam = Fam.new(fam_params)
    @fam.save
  end

  private

  def fam_params
    params.require(:fam).permit(:family_name)
  end
end
