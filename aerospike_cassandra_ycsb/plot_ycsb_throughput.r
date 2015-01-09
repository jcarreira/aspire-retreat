
pdf("aero_cass_ycsb_throughput.pdf")

par(mar=c(8, 4, 4, 2) + 0.2)

#Cassandra:
#workloada_output:[OVERALL], Throughput(ops/sec), 310818.809059547
#workloadb_output:[OVERALL], Throughput(ops/sec), 270472.4763761812
#workloadc_output:[OVERALL], Throughput(ops/sec), 252591.31057929472
#workloadd_output:[OVERALL], Throughput(ops/sec), 308138.0884926256
#workloade_output:[OVERALL], Throughput(ops/sec), 64012.2308871559
#workloadf_output:[OVERALL], Throughput(ops/sec), 195880.3413105793

data <- matrix(c(172635,310818.8,
             274722.9,270472,
             295895.9,252591,
             1137354.5,308138,
             1137354.5,64012,
             134358.1,195880),
             ncol=6, nrow=2)

par(las=2)

labs <- c("A", "B", "C", "D", "E", "F")
x <- barplot(data, main="YCSB Benchmark (Throughput)",
        ylab="Throughput (K ops / sec)", 
        xlab="",
        col=c("darkblue","darkgreen"), 
        beside=TRUE,
        names.arg=labs,
        legend=c("Aerospike", "Cassandra"))

