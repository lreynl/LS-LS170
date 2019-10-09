counter=1
stop=15

while [ $counter -le $stop ]
do
  echo $counter
  ((counter++))
done