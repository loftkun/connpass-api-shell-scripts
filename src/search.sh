#! /bin/bash
set -eu

# ref. https://connpass.com/about/api/

# endpoint
URL=https://connpass.com/api/v1/event/

# params
start=1
count=100
order=3

#keyword_or=福岡,fukuoka
#address_matcher='福岡|北九州|fukuoka'

found_count=0

# search
search () {
  # get
  params="start=${start}&count=${count}&keyword_or=${keyword_or}&order=${order}"
  res=$(curl -s ${URL}?${params})
  len=$(echo $res | jq .results_returned)
  results_available=$(echo $res | jq .results_available)

  # events loop
  for i in $( seq 0 $(($len - 1)) ); do
      # event
      event=$(echo $res | jq .events[$i])
      #echo ${event} | jq -r '. | (.event_id | tostring) + " | " + .started_at + " | " + .title + " | " + .address+ " | " + .event_url'

      # check address
      address=$(echo ${event} | jq -r '.address')
      if [[ ! ${address} =~ ${address_matcher} ]];  then
        continue
      fi

      # echo ${event} | jq -r '. | (.event_id | tostring) + " | " + .started_at + " | " + .title + " | " + .address+ " | " + .event_url'
      echo ${event}

      # judge
      found_count=$((found_count+1))
      if [ ${found_count} -eq ${max_count} ]; then
        exit
      fi
  done
}

main () {
  while true;
  do
      search
      start=$(($start + $len))
      if [ ${start} -gt ${results_available} ]; then
        exit
      fi
      sleep 5
  done
}



if [ $# -ne 3 ]; then
  CMDNAME=`basename $0`
  echo "Usage: $CMDNAME keyword_or address_matcher max_count"
  echo " e.g.) $CMDNAME \"福岡,fukuoka\" \"福岡|北九州|fukuoka\" 100"
  exit 1
fi

keyword_or=${1}
address_matcher=${2}
max_count=${3}

main