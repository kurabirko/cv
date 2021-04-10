BUILD_DIR=./build
SOURCE_DIR=./src

.PHONY:
all: cv.pdf

.ONESHELL:
$(BUILD_DIR)/%.pdf: $(SOURCE_DIR)/%.tex
	lualatex -output-directory="$(BUILD_DIR)" $<

cv.pdf: $(BUILD_DIR)/cv.pdf
	cp "$(BUILD_DIR)/cv.pdf" .

.PHONY:
clean:
	rm -rf $(BUILD_DIR)/*
