IP=
D_DIR=
O_DIR=
O=
USER=
PWD=


upload:
	curl -T $(O) --ftp-create-dirs -u $(USER):$(PWD) ftp://$(IP)/workspace/ftp/$(O_DIR)/preprocess/$(O)
download:
	wget -c -r -nd -nH -P $(D_DIR) --ftp-user=$(USER) --ftp-password=$(PWD) ftp://$(IP)/workspace/ftp/$(D_DIR)
list:
	curl -u $(USER):$(PWD) ftp://$(IP)/workspace/ftp/$(O_DIR)


