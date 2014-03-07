package serena

class User {
    String name
    String login
    String password
    String role = "user"

    static transients = ['admin']

    boolean isAdmin() {
        role == "admin"
    }

    static constraints = {
        name blank: false, size: 3..30
        login blank: false, unique: true, size: 5..20
        password blank: false, password: true, size: 5..20
        role inList: ["user", "admin"]
    }

    String toString() {
        login
    }
}
