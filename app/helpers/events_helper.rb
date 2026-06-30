module EventsHelper

    def price(event)
        if event.free?
            tag.span("FREE", class: "gochi display-5 brown")
        else
            number_to_currency event.price, precision: 0
        end
    end

    def day(event)
        event.starts_at.strftime("%b %d, %Y")
    end

    def day_and_time(event)
        event.starts_at.strftime("%H:%M - %b %d, %Y")
    end
end
