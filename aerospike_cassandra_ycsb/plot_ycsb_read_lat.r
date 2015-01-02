
pdf("aero_cass_ycsb_read_lat.pdf")

par(mar=c(8, 4, 4, 2) + 0.2)

#aerospike_data/aerospike_workloada:[READ], AverageLatency(us), 105.17869805895748
#aerospike_data/aerospike_workloadb:[READ], AverageLatency(us), 105.24664520989013
#aerospike_data/aerospike_workloadc:[READ], AverageLatency(us), 104.32092386523804
#aerospike_data/aerospike_workloadd:[READ], AverageLatency(us), 107.22366564713302
#aerospike_data/aerospike_workloadf:[READ], AverageLatency(us), 105.51934114397156
#cassandra_data/cassandra_workloada:[READ], AverageLatency(us), 504.2676549258102
#cassandra_data/cassandra_workloadb:[READ], AverageLatency(us), 467.12637195179497
#cassandra_data/cassandra_workloadc:[READ], AverageLatency(us), 458.94930340343194
#cassandra_data/cassandra_workloadd:[READ], AverageLatency(us), 392.56461173142105


data <- matrix(c(105,504,
             105,467,
             104,458,
             107,392,
             0,0,
             105,0),
             ncol=6, nrow=2)

par(las=2)

labs <- c("A", "B", "C", "D", "E", "F")
x <- barplot(data, main="YCSB Benchmark (Average Read Latency)",
        ylab="Average Read Latency (us)", 
        xlab="",
        col=c("darkblue","darkgreen"), 
        beside=TRUE,
        names.arg=labs,
        legend=c("Aerospike", "Cassandra"))

