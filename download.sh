#!/bin/sh


## 데이터 크롤링
for((i=1978; i<=2008; i++)) ;do
  echo $i
  wget http://stat-computing.org/dataexpo/2009/$i.csv.bz2
  bzip2 -d $i.csv.bz2
  sed -e '1d' $i.csv > $i_temp.csv
  mv $i_temp.csf $i.csv
done


