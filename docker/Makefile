IMAGE:=melito00/alpine
VERSION:=0.0.1
UDIR:=/home/kyamada
WPATH:=work

run:
	@echo $(PWD)
	@echo $(IMAGE):$(VERSION)
	docker run --volume $(PWD)/$(WPATH):$(UDIR)/$(WPATH) \
		--workdir "$(UDIR)/$(WPATH)" \
		--rm -it $(IMAGE):$(VERSION)
