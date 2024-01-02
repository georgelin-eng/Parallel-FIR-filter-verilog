#!/bin/bash
echo "Compile project"
quartus_map FIR_filter.qsf
quartus_fit FIR_filter.qsf
quartus_asm FIR_filter.qsf
quartus_sta FIR_filter.qsf
quartus_eda FIR_filter.qsf