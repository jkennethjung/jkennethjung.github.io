#!/bin/bash

# walk.sh - Compile all LaTeX documents to PDF

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