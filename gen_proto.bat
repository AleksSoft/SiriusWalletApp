@echo off

protoc -I=./assets/protos/google --dart_out=grpc:./lib/app/data/grpc/google/protobuf ./assets/protos/google/*.proto
protoc -I=./assets/protos --dart_out=grpc:./lib/app/data/grpc/ ./assets/protos/*.proto
