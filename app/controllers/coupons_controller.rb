class CouponsController < ApplicationController

    def index 
        @coupons = Coupon.all
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def new
     #render the form stored in new.html.erb 
     @coupon = Coupon.new
    end

    def create 
        @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
        redirect_to @coupon
        # this will only work for show
        # redirect_to coupon_path(@coupon) 
    end

end
