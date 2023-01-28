.PHONY: *

build.protoc:
	 protoc --python_out=./generated/python -I=./schema/protobuf/ ./schema/protobuf/v1/User.proto