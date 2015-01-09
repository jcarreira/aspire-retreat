
pdf("aero_cass_ycsb_read_lat.pdf")

par(mar=c(8, 4, 4, 2) + 0.2)

#Aerospike:
##aerospike_data/aerospike_workloada:[READ], AverageLatency(us), 105.17869805895748
##aerospike_data/aerospike_workloadb:[READ], AverageLatency(us), 105.24664520989013
##aerospike_data/aerospike_workloadc:[READ], AverageLatency(us), 104.32092386523804
##aerospike_data/aerospike_workloadd:[READ], AverageLatency(us), 107.22366564713302
##aerospike_data/aerospike_workloadf:[READ], AverageLatency(us), 105.51934114397156

#Cassandra:
#workloada_output:[READ], AverageLatency(us), 107.11630331579681
#workloadb_output:[READ], AverageLatency(us), 116.24434101233416
#workloadc_output:[READ], AverageLatency(us), 123.07334079812284
#workloadd_output:[READ], AverageLatency(us), 99.39345259684465
#workloadf_output:[READ], AverageLatency(us), 114.71020131357156


data <- matrix(c(105,107,
             105,116,
             104,123,
             107,99,
             105,114),
             ncol=5, nrow=2)

par(las=2)

labs <- c("A", "B", "C", "D", "F")
x <- barplot(data, main="YCSB Benchmark (Average Read Latency)",
        ylab="Average Read Latency (us)", 
        xlab="",
        col=c("darkblue","darkgreen"), 
        beside=TRUE,
        names.arg=labs,
        legend=c("Aerospike", "Cassandra"))

