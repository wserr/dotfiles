function pdf --description "Convert all files in current folder to pdf"
	find docs -name "*.md" -exec sh -c 'mkdir -p "pdf/$(dirname "$1")" && pandoc "$1" -o "pdf/${1%.md}.pdf" --pdf-engine=pdflatex' _ {} \;
end
