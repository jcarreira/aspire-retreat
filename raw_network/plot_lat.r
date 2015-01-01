
pdf("raw_firebox_latency.pdf")

data <- c(1.7, 12.7, 209, 431, 980)

barplot(data, main="Ping Pong latency (us)",
        ylab="Latency (us)", xlab="", #col=c("darkblue","darkgreen"), 
        beside=TRUE, space=1, width=c(0.5,0.5,0.5),
        log="y",
        cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2,cex.names=2,
        names.arg=c("<=64B", "32K", "1MB", "2MB", "4MB"))


#legend=c("With lazy instantiation", "W/o lazy instantiation"))
