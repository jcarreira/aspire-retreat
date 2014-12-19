
pdf("ramcloud_benchmark_lat.pdf")
par(mar=c(8, 4, 4, 2) + 0.2)


data <- matrix(c(10.9, 5.4,
             10.9, 7.7,
             11.2, 11.1,
             29.4, 44,
            181.2, 363,
             10.8, 16.2,
             10.9, 20.8,
             12.4, 37.7,
             67.7, 311,
            611.9, 2300), ncol=10, nrow=2)

par(las=2)

labs <- c("Read-100", "Read-1K", "Read-10K", "Read-100K", "Read-1M", "Write-100", "Write-1k", "Write-10K", "Write-100K", "Write-1M")
x <- barplot(data, main="Ramcloud Latency Benchmark (90th percentile)",
        ylab="Latency (us)", xlab="",
        col=c("darkblue","darkgreen"), 
        beside=TRUE,
        names.arg=labs,
        legend=c("Firebox", "Ramcloud HW"))
#text(cex=1, x=x-0.25, y=-10, labs, xpd=TRUE, srt=45)
