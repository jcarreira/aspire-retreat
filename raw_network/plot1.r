
pdf("raw_firebox_latency.pdf")

data <- c(1.7, 12.7, 209, 431, 980)

barplot(data, main="Ping pong latency (us) in Firebox v0",
        ylab="Latency (us)", xlab="", #col=c("darkblue","darkgreen"), 
        beside=TRUE, space=1, width=c(0.5,0.5,0.5),
        log="y",
        names.arg=c("<=64B", "32K", "1MB", "2MB", "4MB"))


#legend=c("With lazy instantiation", "W/o lazy instantiation"))
