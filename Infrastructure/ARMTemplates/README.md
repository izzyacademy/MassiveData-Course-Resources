## ARM Templates

This directory contains Azure Resource Manager templates used to provision resources in the Azure Cloud Environment.

## Virtual Machine Sizes (Dsv3-series)

The virtual machine size family that we will be using for our cluster is from the general purpose class known as the Dsv3 series 

https://docs.microsoft.com/en-us/azure/virtual-machines/dv3-dsv3-series#dsv3-series


|Size               |vCPU|RAM (GiB)| Temp Storage (GiB)|Max Data Disks|Max Storage throughput|Max Temp Storage throughput|Max Disk throughput |Max Burst Disk throughput|Expected network bandwidth|
|-------------------|---|-------|-------|---|-------------------|---------------|---------------|-----------|------|
|Standard_D2s_v3	|2	|8	    |16	    |4	|4000/32 (50)	    |4000/100	    |3200/48	    |4000/100	|2/1000|
|Standard_D4s_v3	|4	|16	    |32	    |8	|8000/64 (100)	    |8000/200	    |6400/96	    |8000/200	|2/2000|
|Standard_D8s_v3	|8	|32	    |64	    |16	|16000/128 (200)	|16000/400	    |12800/192	    |16000/400	|4/4000|
|Standard_D16s_v3	|16	|64	    |128	|32	|32000/256 (400)	|32000/800	    |25600/384	    |32000/800	|8/8000|
|Standard_D32s_v3	|32	|128	|256	|32	|64000/512 (800)	|64000/1600	    |51200/768	    |64000/1600	|8/16000|
|Standard_D48s_v3	|48	|192	|384	|32	|96000/768 (1200)	|96000/2000	    |76800/1152	    |80000/2000	|8/24000|
|Standard_D64s_v3	|64	|256	|512	|32	|128000/1024 (1600)	|128000/2000	|80000/1200	    |80000/2000	|8/30000|


## Virtual Machine Pricing (Dsv3-series)

https://azure.microsoft.com/en-us/pricing/details/virtual-machines/linux/

|Instance	        |vCPU(s)|RAM        |Temporary storage  |Pay as you go  | 1 year reserved (% Savings)|3 year reserved (% Savings)| Spot (% Savings)|
|-------------------|-------|-----------|-------------------|---------------| ----------------------|-----------------------|-------------------|
|D2s v3	            |2	    | 8 GiB	    |16 GiB	            |$0.096/hour    |$0.0572/hour (~40%)	|$0.0369/hour (~62%)	|$0.0257/hour (~73%)|
|D4s v3	            |4	    | 16 GiB	|32 GiB	            |$0.192/hour    |$0.1145/hour (~40%)	|$0.0738/hour (~62%)	|$0.0513/hour (~73%)|
|D8s v3	            |8	    | 32 GiB	|64 GiB	            |$0.384/hour    |$0.229/hour (~40%)	    |$0.1474/hour (~62%)	|$0.1026/hour (~73%)|
|D16s v3	        |16	    | 64 GiB	|128 GiB	        |$0.768/hour    |$0.4580/hour (~40%)	|$0.2948/hour (~62%)	|$0.2052/hour (~73%)|
|D32s v3	        |32	    | 128 GiB	|256 GiB	        |$1.536/hour    |$0.9160/hour (~40%)	|$0.5896/hour (~62%)	|$0.4103/hour (~73%)|
|D48s v3	        |48	    | 192 GiB	|384 GiB	        |$2.304/hour    |$1.3286/hour (~42%)	|$0.864/hour (~63%)	    |$0.6154/hour (~73%)|
|D64s v3	        |64	    | 256 GiB	|512 GiB	        |$3.072/hour    |$1.8320/hour (~40%)	|$1.1792/hour (~62%)	|$0.8206/hour (~73%)|


## Cluster Node Sizing

To get started, we will set up 2 kubernetes node pools
- system node pool with 1 virtual machine (or node)
- agent node pool with 3 virtual machines (or nodes)

## Cluster Node Selections
- The system node pool will consist of 1 Standard_D4s_v3 instance (giving us 4 vCPUs and 16GB of RAM).
- The agent node pool will consist of 3 Standard_D8s_v3 instances (giving us a total of 24 vCPUs and 96GB of RAM).


