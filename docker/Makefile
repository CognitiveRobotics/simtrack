all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""
	@echo "   1. make build            - build all cogrob images"
	@echo "   1. make pull             - pull all cogrob images"
	@echo "   1. make clean            - remove all cogrob images"
	@echo ""

build:
	@docker build --tag=cogrob/simtrack:dep dep/.
	@docker build --tag=cogrob/simtrack:dev dev/.
	@docker build --tag=cogrob/simtrack:gui gui/.
	@docker build --tag=cogrob/simtrack:cuda cuda/.
	@docker build --tag=cogrob/simtrack:simtrack simtrack/.

# pull:
# 	@docker pull cogrob/simtrack:dep

clean:
# 	@docker rmi -f cogrob/simtrack:dep
# 	@docker rmi -f cogrob/simtrack:dev
	@docker rmi -f cogrob/simtrack:gui
	@docker rmi -f cogrob/simtrack:cuda
	@docker rmi -f cogrob/simtrack:simtrack
