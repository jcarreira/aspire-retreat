
pdf("aero_cass_ycsb_throughput.pdf")

par(mar=c(8, 4, 4, 2) + 0.2)


data <- matrix(c(172635,82895.6,
             274722.9,69694,
             295895.9,69284.8,
             1137354.5,81987.7,
             1137354.5,0,
             134358.1,0),
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

