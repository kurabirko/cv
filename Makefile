OUT_DIR := build
FILE_NAME := main

# Let latexmk decide if sources are modified
.PHONY: clean cv.pdf

cv.pdf: $(FILE_NAME).tex
	latexmk -interaction=nonstopmode -output-directory=$(OUT_DIR) $<
	cp $(OUT_DIR)/$(FILE_NAME).pdf $@

clean:
	latexmk -c
