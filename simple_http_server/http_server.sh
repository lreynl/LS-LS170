#!/bin/bash

function server () {
  while true
  do
    message_arr=()
    check=true
    while $check
    do
      read line
      message_arr+=($line)
      if [[ "${#line}" -eq 1 ]]
      then
        check=false
      if
    done
    method=${message_arr[0]}
    path=${message_arr[1]}
    if [[ $method = 'GET' ]]
    then
      dir='./www/'
      if [[ -f "$dir$path" ]]
      then
        printf "HTTP/1.1 200 OK\r\n"
        printf "Content-Type: text/html; charset=utf-8\r\n\r\n"
        cat "$dir$path"
        printf "\r\n"
      else
        printf "HTTP/1.1 404 Not Found\r\n"
        printf "Content-Length: 0\r\n\r\n"
      fi
    else
      printf "HTTP/1.1 400 Bad Request\r\n"
      printf "Content-Length: 0\r\n\r\n"
    fi
  done
}

coproc SERVER_PROCESS { server; }

netcat -lv 2345 <&${SERVER_PROCESS[0]} >&${SERVER_PROCESS[1]}

