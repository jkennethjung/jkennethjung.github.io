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
pdftk cover_letter.pdf cv.pdf teaching_statement.pdf research_statement.pdf beetles.pdf cat output JungKen_Alberta.pdf

echo "Complete application created: complete_application.pdf"
