#!/bin/bash
#SBATCH -t 0:30:00
#SBATCH --mem-per-cpu 5G
#SBATCH -N 1
#SBATCH -c 1
#SBATCH -p devel

module load texlive
pdflatex -interaction=batchmode cv.tex
pdflatex -interaction=batchmode cv.tex

