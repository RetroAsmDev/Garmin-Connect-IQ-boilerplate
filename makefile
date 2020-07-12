DEVICE = fenix5xplus
SDK_PATH = d:/garmin/sdks/connectiq-sdk-win-3.1.9-2020-06-24-1cc9d3a70
PRIVATE_KEY = ./private_key/gar_developer_key.der
BIN = $(shell grep.exe entry= manifest.xml | sed.exe 's/.*entry=\"//; s/\".*/.prg/')
CURRENT_DIR = d:/garmin/progs/hello_world/bin

build:
	$(SDK_PATH)/bin/monkeyc --device $(DEVICE) --output ./bin/$(BIN) --jungles ./monkey.jungle --warn --private-key $(PRIVATE_KEY)

build_and_run: build run

start_simulator:
	$(SDK_PATH)/bin/connectiq

run: start_simulator
	$(SDK_PATH)/bin/monkeydo $(CURRENT_DIR)/$(BIN) $(DEVICE)