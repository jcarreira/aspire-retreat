
pdf("ramcloud_benchmark_bw.pdf")
par(mar=c(8, 4, 4, 2) + 0.2)


data <- matrix(c(8.9, 18.8,
          89.0, 130,
          864.5, 925,
          (3.2*1024), (2.2*1024),
          (5.2*1024), (2.6*1024),
          9.0, 5.9,
          88.7, 44.1,
          774.6, 233,
          (1.4*1024), 383,
          (1024*1.5), 431), ncol=10, nrow=2)

par(las=2)

labs <- c("Read-100", "Read-1K", "Read-10K", "Read-100K", "Read-1M", "Write-100", "Write-1k", "Write-10K", "Write-100K", "Write-1M")
x <- barplot(data, main="Ramcloud Benchmark (Bandwidth)",
        ylab="Bandwidth (MB/s)", xlab="", 
        col=c("darkblue","darkgreen"), 
        beside=TRUE,
        log="y",
        names.arg=labs,
        legend=c("Firebox", "Ramcloud HW"))
#text(cex=1, x=x-0.25, y=-10, labs, xpd=TRUE, srt=45)
