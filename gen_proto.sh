#!/bin/bash

# run proto file generator
SRC_DIR=./protos
DST_DIR=./lib/src/

protoc -I=$SRC_DIR --dart_out=grpc:$DST_DIR $SRC_DIR/*.proto

# run the same command for default google protos
# https://github.com/protocolbuffers/protobuf/tree/master/src/google/protobuf
G_SRC_DIR=./protos/google
G_DST_DIR=./lib/src/google/protobuf

protoc -I=$G_SRC_DIR --dart_out=grpc:$G_DST_DIR $G_SRC_DIR/*.proto