require 'bibtex'
require 'yaml'

File.open("./_data/publications.yaml", "w") {
    |file| file.write(
        BibTeX.parse('./_data/publications.bib').extend_initials!.to_citeproc.to_yaml
    )
}