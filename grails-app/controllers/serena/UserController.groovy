package serena

class UserController {

    def index() {
        redirect(action: "login")
    }

    def login() {}

    def logout() {}

    def authenticate() {
        log.info "toto"
        def user = User.findByLoginAndPassword(params.login, params.password)
        if (user) {
            session.user = user
            flash.message = "Hello ${user.login}"
            redirect(controller: "member")
        } else {
            flash.message = "Sorry ${params.login}, please try again"
            redirect(action: 'login')
        }
    }
}
