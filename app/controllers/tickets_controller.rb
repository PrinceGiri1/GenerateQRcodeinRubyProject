class TicketsController < ApplicationController
    def show
        @tickets = Ticket.last
        @code = @tickets.code
        @qrcode = RQR::QRCode.new("http://github.com/")
        @svg = @qrcode.as_avg(
            offset: 0,
            color: '000',
            shape_rendering: 'cripsEdges',
            module_side: 6
        )
        # This is not working properlity so i try to fixed this issue tommaro and also learn how to create QR in ruby on rails.
        # i hope so i will fixed this issue tommaro definatly 

    end
end
