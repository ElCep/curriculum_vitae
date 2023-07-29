.PHONY: examples

CC = xelatex
BIBER = biber
CV_DIR = .
EXAMPLES_DIR = .
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')


cv.pdf: $(EXAMPLES_DIR)/delay_cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<
	$(BIBER) $(EXAMPLES_DIR)/delay_cv
	$(CC) -output-directory=$(EXAMPLES_DIR) $<
