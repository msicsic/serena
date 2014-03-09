package serena

class AdminFilters {

    def filters = {
        all(controller:'member', action:'*') {
            before = {
                if (! session?.user?.admin) {
                    flash.message = "You must be logged"
                    redirect(controller: "user", action: "login")
                    return false
                }
            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
