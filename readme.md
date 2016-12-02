# usage

while editing livescript files, just type `<tab>`
to complete things.

completion is just made of a list of tags, there is no intellisense so it's
on your own to select a good method name.

tags with camelCase can be reached by writting only uppercase chars. so

    doc<tab>.geb<tab>

will complete as

    document.

and propose 

    getElementsByClassName
    getElementById
    getElementsByTagName
    getElementsByTagNameNS

# missing something

feature requests and patches are welcome. just send me an email.

# about

completion for livescript and javascript based on

* an introspection of document DOM element (a simple for loop)
* an older dicts i made long time ago (ecma and jquery)
* and copy/paste from http://devdocs.io/dom_events/

need

* documentation
* refactoring (use autoload to share completion code between js and ls)
