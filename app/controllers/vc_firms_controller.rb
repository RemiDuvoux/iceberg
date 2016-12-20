class VcFirmsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
      @vc_firms = VcFirm.all
      sectors_array = []
      @vc_firms.each do |vc_firm|
        vc_firm.startups.each do |startup|
          sectors_array << startup.sector
        end
      end
      @sectors = sectors_array.uniq.select {|element| element != nil}
  end

  def show
    @vc_firm = VcFirm.find(params[:id])
  end
end
