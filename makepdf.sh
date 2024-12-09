pdflatex -interaction=nonstopmode final.tex | tee pdflatex_output.log | grep -A 5 -E "^(.*Error:|!.*)"
if [ ${PIPESTATUS[0]} -ne 0 ]; then
    echo "uh oh"
fi
rm -f final.aux final.log final.fls final.fdb_latexmk final.synctex.gz pdflatex_output.log
