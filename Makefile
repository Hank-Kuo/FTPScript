IP=
D_DIR=
O_DIR=
O=
USER=
PWD=


upload:
	curl -T $(O) --ftp-create-dirs -u $(USER):$(PWD) ftp://$(IP)/workspace/dataset/$(O_DIR)/preprocess/$(O)
download:
	wget -c -r -nd -nH -P $(D_DIR) --ftp-user=$(USER) --ftp-password=$(PWD) ftp://$(IP)/workspace/dataset/$(D_DIR)
