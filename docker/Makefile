IMAGE:=melito00/alpine
VERSION:=0.0.1
UDIR:=/home/kyamada
WPATH:=work

build:
	docker build -t $(IMAGE):$(VERSION) ./

run:
	@echo $(PWD)
	@echo $(IMAGE):$(VERSION)
	docker run --volume $(PWD)/$(WPATH):$(UDIR)/$(WPATH) \
		--workdir "$(UDIR)/$(WPATH)" \
		--rm -it $(IMAGE):$(VERSION)
