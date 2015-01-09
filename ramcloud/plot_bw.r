# Script to generate graph for Aspire Retreat
# Write latency of RAMCloud's ClusterPerf Benchmark in FireboxV0 vs Ramcloud's cluster
#  
# Benchmark workflow:
# 1. Coordinator and Master are launched
# 2. For each size (100 bytes to 1MB):
# 2.1 Fill single table with 500MB of key-values data
# 2.2 Read benchmark:
# 2.2.1 Read 100K times synchronously a random key
# 2.3 Write benchmark
# 2.3.1 Write 100k times synchronously a random key


pdf("ramcloud_benchmark_bw.pdf")
par(mar=c(8, 4, 4, 2) + 0.2)


data <- matrix(c(30.5, 18.8,
          230.6, 130,
          (1.6*1024), 925,
          (4.3*1024), (2.2*1024),
          (5.4*1024), (2.6*1024),
          22.4, 5.9,
          174.5, 44.1,
          933.8, 233,
          (1.5*1024), 383,
          (1024*1.6), 431), ncol=10, nrow=2)

par(las=2)

labs <- c("Read-100B", "Read-1K", "Read-10K", "Read-100K", "Read-1M", "Write-100B", "Write-1k", "Write-10K", "Write-100K", "Write-1M")
x <- barplot(data, main="RAMCloud Read/Write Bandwidth",
        ylab="Bandwidth (MB/s)", xlab="", 
        col=c("darkblue","darkgreen"), 
        beside=TRUE,
        log="y",
        names.arg=labs,
        legend=c("Firebox", "RAMCloud HW"))
#text(cex=1, x=x-0.25, y=-10, labs, xpd=TRUE, srt=45)
