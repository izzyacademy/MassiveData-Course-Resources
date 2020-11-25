## ARM Templates

This directory contains Azure Resource Manager templates used to provision resources in the Azure Cloud Environment.

## Virtual Machine Sizes (Dsv3-series)

The virtual machine size family that we will be using for our cluster is from the general purpose class known as the Dsv3 series 

https://docs.microsoft.com/en-us/azure/virtual-machines/dv3-dsv3-series#dsv3-series


|Size               |vCPU|RAM (GiB)|-Temp Storage (GiB)|Max Data Disks|Max Storage throughput|Max Temp Storage throughput|Max Disk throughput |Max Burst Disk throughput|Expected network bandwidth|
|-------------------|---|-------|-------|---|-------------------|---------------|---------------|-----------|------|
|Standard_D2s_v3	|2	|8	    |16	    |4	|4000/32 (50)	    |4000/100	    |3200/48	    |4000/100	|2/1000|
|Standard_D4s_v3	|4	|16	    |32	    |8	|8000/64 (100)	    |8000/200	    |6400/96	    |8000/200	|2/2000|
|Standard_D8s_v3	|8	|32	    |64	    |16	|16000/128 (200)	|16000/400	    |12800/192	    |16000/400	|4/4000|
|Standard_D16s_v3	|16	|64	    |128	|32	|32000/256 (400)	|32000/800	    |25600/384	    |32000/800	|8/8000|
|Standard_D32s_v3	|32	|128	|256	|32	|64000/512 (800)	|64000/1600	    |51200/768	    |64000/1600	|8/16000|
|Standard_D48s_v3	|48	|192	|384	|32	|96000/768 (1200)	|96000/2000	    |76800/1152	    |80000/2000	|8/24000|
|Standard_D64s_v3	|64	|256	|512	|32	|128000/1024 (1600)	|128000/2000	|80000/1200	    |80000/2000	|8/30000|
