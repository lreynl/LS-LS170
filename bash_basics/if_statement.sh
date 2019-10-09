integer=10

if [[ $integer -lt 10 ]]
then
  echo Its less than 10
elif [[ $integer -eq 10 ]]
then
  echo It equals 10
else
  echo Its greater than 10
fi

integer_1=14
integer_2=20

if [[ $integer_1 -gt integer ]] && [[ $integer_1 -lt $integer_2 ]]
then
  echo $integer_1 is between $integer and $integer_2
fi