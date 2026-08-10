## Overview

This repository is a fork of the PHP and java implementation of _Rice University Bidding System_ (RUBiS). Made to test the benchmarking aspects of the application with the intention to learn via practice how benchmarking systems operate. Considering this, 3 main objectives with this study were made:

- Focus on a single implementation of the application, the one chosen being the PHP version, as it uses simpler, more direct code without requiring a Java application server. 

- Allow the fork to be usefull both in macos systems and linux
- Generate the performance reports and the cpu etc mesurments 

This README file is documenting how I achieved this 3 points. 

## Cleaning the original repository 

To keep the repo concise it is a good practice to remove all dependencies unrelated to the objective of the study. Thus, removing java/servlets and EJB implementation was necessary. All of these commands were used to achieve a cleaner repository: 

- the servelets version of the aplication:
```
git rm -r servlets/
```

- load presets specific to the Servlets/EJB implementations:
```
git rm -r "bench/Servlets.properties" "bench/EJB.properties"
git rm bench/jboss*.sh bench/jonas*.sh bench/ejb_generate_graphs.sh
```

- removes specific configuration of Apache Tomcat:
```
git rm -r setup/scripts/
```  

Also, some references to Servlets/EJB in the Makefile and generate_cpu_avg.sh were removed. 
