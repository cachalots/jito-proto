.PHONY: build
build:
	protoc --proto_path=. \
           --go_opt=paths=source_relative \
           --go_out=. \
		   --go-grpc_opt=paths=source_relative \
           --go-grpc_out=. \
           auth.proto bundle.proto packet.proto searcher.proto shared.proto shredstream.proto
