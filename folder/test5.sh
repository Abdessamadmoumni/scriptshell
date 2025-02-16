#!/bin/bash
cnt=0
while [ $cnt -le 100 ]
do
   echo "compeut: $cnt"
   ((cnt+=2))
done