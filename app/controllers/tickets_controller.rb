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

    end
end
