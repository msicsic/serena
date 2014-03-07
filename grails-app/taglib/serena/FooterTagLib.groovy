package serena

class FooterTagLib {
    //static defaultEncodeAs = 'html'
    static defaultEncodeAs = 'text'
    //static encodeAsForTags = [tagName: 'raw']

    def thisYear = {
        out << new Date().format("yyyy")
    }

    def copyright = { attrs, body ->
        out << "&copy;" + body() + " " + attrs.startYear + " - " + thisYear()
    }
}
