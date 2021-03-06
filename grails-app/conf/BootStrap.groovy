import serena.User

class BootStrap {

    static def age(Date date) {
        def now = new GregorianCalendar()
        def dob = new GregorianCalendar()
        dob.setTime(date);
        int year = now.get(Calendar.YEAR)
        int month = dob.get(Calendar.MONTH)
        int day = dob.get(Calendar.DAY_OF_MONTH)
        def fake = new GregorianCalendar(year, month, day)
        return now.get(Calendar.YEAR) - dob.get(Calendar.YEAR) - (fake > now ? 1 : 0)
    }

    def init = { servletContext ->
        Date.metaClass.age = { -> age(delegate) }
        User user1 = new User(login: "login1", password: "password", name: "User", role: "user").save()
        User user2 = new User(login: "login2", password: "password", name: "Admin", role: "admin").save()
    }


    def destroy = {
    }
}
