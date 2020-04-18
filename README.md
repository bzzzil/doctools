# doctools
This repository is expected to be a personal collection of document processing helper scripts used in document processing, debugging, etc.

## formatdoc
Bash script used to pretty-print XML files inside OOXML (.docx, .xlsx, .pptx, etc) or ODF (.odt, .ods, etc) files. Main propose is to provide human readable is simple viewers XML structure of document package.

Usage:
```
	formatdoc [filename]
```

Script depends on 
[xmllint](http://xmlsoft.org/xmllint.html) from [libxml2](http://xmlsoft.org/) package.
Cygwin users can install it with:
```
	setup-x86_64 -qP libxml2
```
