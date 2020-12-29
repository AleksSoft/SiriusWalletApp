@echo off

protoc -I=./assets/protos/google --dart_out=grpc:./lib/src/google/protobuf ./assets/protos/google/*.proto
protoc -I=./assets/protos --dart_out=grpc:./lib/src/ ./assets/protos/*.proto
