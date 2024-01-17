
docName = draft-ietf-lamps-cms-kyber
versionNumber = 01
docNameFull = $(docName)-$(versionNumber)

default: all

txt: $(docName).txt

$(docNameFull).txt: $(docName).mkd
	kdrfc $(docName).mkd



xml: $(docNameFull).xml

$(docNameFull).xml: $(docName).mkd
	kramdown-rfc $(docName).mkd > $(docNameFull).xml



html: all # xml
	# xml2rfc $(docNameFull).xml --basename $(docNameFull) --html
 # Explicitely aliasing this to `all` so that a .txt is always generated, because that should be committed to git for other people's ease of editing.

all: xml
	xml2rfc $(docNameFull).xml --html --text --v3


clean:
	rm -f $(docNameFull).xml

mrproper: clean
	rm -f $(docNameFull).html $(docNameFull).txt
