all: build run

build:
	@cd c && make build
	@cd cs && make build
	@cd cpp && make build
	@cd go && make build
	@cd java && make build
	@cd nodejs && make build
	@cd python && make build
	@cd ruby && make build
	@cd rust && make build
	@cd swift && make build

run:
	@cd c && make run
	@cd cs && make run
	@cd cpp && make run
	@cd go && make run
	@cd java && make run
	@cd nodejs && make run
	@cd python && make run
	@cd ruby && make run
	@cd rust && make run
	@cd swift && make run
