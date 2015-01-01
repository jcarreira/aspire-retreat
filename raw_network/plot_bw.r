
pdf("raw_firebox_bandwidth.pdf")

data <- c(8, 17, 34, 2500, 5054, 4945, 5110)

barplot(data, main="Ping Pong Bandwidth (MB/s)",
        ylab="Bandwidth (MB/s)", xlab="",
        beside=TRUE,
 space=1, 
        width=c(1,1,1,1,1),
#space=c(2,2,2,2,2),
        log="y",
        cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2,cex.names=2,
        names.arg=c("16B", "32B", "64B", "32K", "1MB", "2MB", "4MB"))

