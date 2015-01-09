# Script to generate graph for Aspire Retreat
# Read latency of RAMCloud's ClusterPerf Benchmark in FireboxV0 vs Ramcloud's cluster
#  
# Benchmark workflow:
# 1. Coordinator and Master are launched
# 2. For each size (100 bytes to 1MB):
# 2.1 Fill single table with 500MB of key-values data
# 2.2 Read benchmark:
# 2.2.1 Read 100K times synchronously a random key
# 2.3 Write benchmark
# 2.3.1 Write 100k times synchronously a random key

pdf("ramcloud_benchmark_lat.pdf")
par(mar=c(8, 4, 4, 2) + 0.2)


data <- matrix(c(3.0, 5.4,
             4.0, 7.7,
             5.6, 11.1,
             21.8, 44,
            171.3, 363,
             4.2, 16.2,
             5.4, 20.8,
             10.1, 37.7,
             59.8, 311,
            594.6, 2300), ncol=10, nrow=2)

par(las=2)

labs <- c("Basic.Read-100B", "Basic.Read-1K", "Basic.Read-10K", "Basic.Read-100K", "Basic.Read-1M", "Basic.Write-100B", "Basic.Write-1k", "Basic.Write-10K", "Basic.Write-100K", "Basic.Write-1M")
x <- barplot(data, main="RAMCloud Read/Write Median Latency",
        ylab="Latency (us)", xlab="",
        col=c("darkblue","darkgreen"), 
        beside=TRUE,
        names.arg=labs,
        log="y",
        legend=c("Firebox", "RAMCloud HW"))

axis(side = 2, at = c(0,1,2,3))
#text(cex=1, x=x-0.25, y=-10, labs, xpd=TRUE, srt=45)
