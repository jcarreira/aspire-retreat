
pdf("aero_cass_ycsb_write_lat.pdf")

par(mar=c(8, 4, 4, 2) + 0.2)

#Aerospike:
#aerospike_workloada:[UPDATE], AverageLatency(us), 258.05993202300164
#aerospike_workloadb:[UPDATE], AverageLatency(us), 257.9322940190865
#aerospike_workloadf:[UPDATE], AverageLatency(us), 255.12335236176267

#Cassandra:
#workloada_output:[UPDATE], AverageLatency(us), 90.51074175910175
#workloadb_output:[UPDATE], AverageLatency(us), 91.26704507562005
#workloadf_output:[UPDATE], AverageLatency(us), 86.68717930914063

data <- matrix(c(258, 90,
             257, 91, 
             255, 86),
             ncol=3, nrow=2)

par(las=2)

labs <- c("A", "B", "F")
x <- barplot(data, main="YCSB Benchmark (Average Write Latency)",
        ylab="Average Write Latency (us)", 
        xlab="",
        col=c("darkblue","darkgreen"), 
        beside=TRUE,
        names.arg=labs,
        legend=c("Aerospike", "Cassandra"))

