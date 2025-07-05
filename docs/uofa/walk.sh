#!/bin/bash

# walk.sh - Compile all LaTeX documents to PDF

rm beetles.pdf cv.pdf
ln -s ../../../beetles/Stack/Paper/output/beetles.pdf beetles.pdf
ln -s ../cv/cv.pdf ./cv.pdf

echo "Compiling research statement..."
pdflatex research_statement.tex
pdflatex research_statement.tex  # Second run for proper formatting

echo "Compiling cover letter..."
pdflatex cover_letter.tex
pdflatex cover_letter.tex  # Second run for proper formatting

echo "Compiling teaching statement..."
pdflatex teaching_statement.tex
pdflatex teaching_statement.tex  # Second run for proper formatting

echo "Cleaning up auxiliary files..."
rm -f *.aux *.log *.out *.toc *.synctex.gz

echo "Done! PDFs created:"
echo "- research_statement.pdf"
echo "- cover_letter.pdf"
echo "- teaching_statement.pdf"

echo "Combining PDFs into complete application..."
# Check if pdftk is available, otherwise use pdfunite
if command -v pdftk &> /dev/null; then
    pdftk cover_letter.pdf cv.pdf teaching_statement.pdf research_statement.pdf beetles.pdf cat output complete_application.pdf
elif command -v pdfunite &> /dev/null; then
    pdfunite cover_letter.pdf cv.pdf teaching_statement.pdf research_statement.pdf beetles.pdf complete_application.pdf
else
    echo "Warning: Neither pdftk nor pdfunite found. Cannot combine PDFs."
    echo "Install pdftk with: brew install pdftk-java"
    echo "Or install poppler-utils with: brew install poppler"
    exit 1
fi

echo "Complete application created: complete_application.pdf"
