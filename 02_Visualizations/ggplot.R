p1 <- ggplot(dfa, aes(x = ORDER_DATE, y = SHIPPED_DATE, color = UNIT_PRICE)) + geom_point() + facet_wrap(~CUSTOMER_STATE) 
p2 <- ggplot(dfa, aes(x = ORDER_DATE, y = SHIPPED_DATE, color = TITLE)) + geom_point() + facet_wrap(~CUSTOMER_STATE) 
p3 <- ggplot(dfa, aes(x = ORDER_DATE, y = SHIPPED_DATE, color = ARTIST)) + geom_point() + facet_wrap(~CUSTOMER_STATE) 