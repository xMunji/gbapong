# Project settings
PROJECT := pong_game

SRC_DIR := src
BUILD_DIR := build
ASSETS_DIR := assets
INCLUDE_DIR := include

GRIT := /opt/devkitpro/libtonc/butano/tools/grit
MMUTIL := /opt/devkitpro/tools/bin/mmutil
AUDIO := /opt/devkitpro/libtonc/butano/tools/audio
DMG_AUDIO := /opt/devkitpro/libtonc/butano/tools/dmg_audio
GRAPHICS := /opt/devkitpro/libtonc/butano/graphics
BUILD := $(INCLUDE_DIR)

CXX := /opt/devkitpro/devkitARM/bin/arm-none-eabi-g++
CXXFLAGS := -I/opt/devkitpro/libtonc/butano/include -I$(INCLUDE_DIR) -mthumb -mthumb-interwork -O2 -Wall
LDFLAGS := -L/opt/devkitpro/libtonc/butano/lib -lbutano -specs=gba.specs -mthumb -mthumb-interwork

SOURCES := $(wildcard $(SRC_DIR)/*.cpp)
OBJECTS := $(patsubst $(SRC_DIR)/%.cpp, $(BUILD_DIR)/%.o, $(SOURCES))

ASSET_FILES := $(wildcard $(ASSETS_DIR)/*.png)
ASSET_HEADERS := $(patsubst $(ASSETS_DIR)/%.png, $(INCLUDE_DIR)/bn_sprite_items_%.h, $(ASSET_FILES))

all: $(BUILD_DIR)/$(PROJECT).gba

$(BUILD_DIR)/$(PROJECT).gba: $(BUILD_DIR)/$(PROJECT).elf
	@echo "Building GBA file..."
	/opt/devkitpro/devkitARM/bin/arm-none-eabi-objcopy -O binary $< $@

$(BUILD_DIR)/$(PROJECT).elf: $(OBJECTS)
	@echo "Linking..."
	$(CXX) $^ $(CXXFLAGS) $(LDFLAGS) -o $@

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp $(ASSET_HEADERS)
	@mkdir -p $(BUILD_DIR)
	@echo "Compiling $<..."
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(INCLUDE_DIR)/bn_sprite_items_%.h: $(ASSETS_DIR)/butano_sprite_items.json
	@mkdir -p $(INCLUDE_DIR)
	@echo "Generating asset headers..."
	python3 /opt/devkitpro/libtonc/butano/tools/butano_assets_tool.py \
        --grit $(GRIT) \
        --mmutil $(MMUTIL) \
        --audio $(AUDIO) \
        --dmg_audio $(DMG_AUDIO) \
        --graphics $(GRAPHICS) \
        --build $(BUILD)

clean:
	rm -rf $(BUILD_DIR) $(INCLUDE_DIR)
