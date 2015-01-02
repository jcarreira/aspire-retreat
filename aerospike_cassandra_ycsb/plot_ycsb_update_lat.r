
pdf("aero_cass_ycsb_update_lat.pdf")

par(mar=c(8, 4, 4, 2) + 0.2)

#aerospike_data/aerospike_workloada:[UPDATE], AverageLatency(us), 258.05993202300164
#aerospike_data/aerospike_workloadb:[UPDATE], AverageLatency(us), 257.9322940190865
#aerospike_data/aerospike_workloadf:[UPDATE], AverageLatency(us), 255.12335236176267
#cassandra_data/cassandra_workloada:[UPDATE], AverageLatency(us), 262.10055306880446
#cassandra_data/cassandra_workloadb:[UPDATE], AverageLatency(us), 251.32506832987895

data <- matrix(c(258,262,
             257,251,
             255,0),
             ncol=3, nrow=2)

par(las=2)

labs <- c("A", "B", "F")
x <- barplot(data, main="YCSB Benchmark (Average Update Latency)",
        ylab="Average Update Latency (us)", 
        xlab="",
        col=c("darkblue","darkgreen"), 
        beside=TRUE,
        names.arg=labs,
        legend=c("Aerospike", "Cassandra"))

