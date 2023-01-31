#!/bin/bash

WARNING_MESSAGE=$(protoc --python_out=./generated/python -I=./schema/protobuf/ ./schema/protobuf/v1/User.proto 2>&1)

if [[ "$WARNING_MESSAGE" =~ "warning" ]]; then
  echo "found"
  exit 1
else
  echo "not found"
  exit 0
fi


