p1 <- ggplot(dfa, aes(x = as.Date(ORDER_DATE, "%Y-%m-%d"), y = as.Date(SHIPPED_DATE, "%Y-%m-%d"), color = as.factor(UNIT_PRICE))) + geom_point() + facet_wrap(~CUSTOMER_STATE) 
p2 <- ggplot(dfa, aes(x = as.Date(ORDER_DATE, "%Y-%m-%d"), y = as.Date(SHIPPED_DATE, "%Y-%m-%d"), color = as.factor(TITLE))) + geom_point() + facet_wrap(~CUSTOMER_STATE) 
p3 <- ggplot(dfa, aes(x = as.Date(ORDER_DATE, "%Y-%m-%d"), y = as.Date(SHIPPED_DATE, "%Y-%m-%d"), color = as.factor(ARTIST))) + geom_point() + facet_wrap(~CUSTOMER_STATE) 

plc <- ggplot(dfc, aes(x = CUSTOMER_STATE)) + geom_histogram()
plo <- ggplot(dfo, aes(x = CUSTOMER_ID)) + geom_histogram()
pli <- ggplot(dfi, aes(x = ITEM_ID, y = UNIT_PRICE, color = ARTIST)) + geom_bar(stat = "identity")
pld <- ggplot(dfd, aes(x = ITEM_ID*ORDER_QTY)) + geom_histogram()