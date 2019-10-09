counter=0
stop=17

until [ $counter -gt $stop ]
do
  echo The counter is $counter
  ((counter++))
done