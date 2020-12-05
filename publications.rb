require 'bibtex'
require 'yaml'

papers = BibTeX.parse('./_data/publications.bib').extend_initials!
papers = papers.to_citeproc.to_yaml

file = File.open("./_data/publications.yaml", "w")
file.puts papers.to_yaml
file.close