IP=
D_DIR=
O_DIR=
O=
USER=
PWD=


upload:
	curl $(O) -T -u $(USER):$(PWD) ftp://$(IP)/workspace/dataset/$(O_DIR)
download:
	wget -r --ftp-user=$(USER) --ftp-password=$(PWD) ftp://$(IP)/workspace/dataset/$(D_DIR)
