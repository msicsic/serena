package serena

class Member {
    String number
    String firstname
    String lastname
    String address
    String address2
    String postalCode
    String town
    String dept
    String tel
    String dob
    Boolean dmPresent
    Boolean cancelled
    Boolean dead
    String vision
    String earing
    String mobility
    String understanding
    String doctorFirstname
    String doctorLastname
    String doctorPhone
    String doctorEmail
    String doctorPhoneNight
    String doctorPhoneMobile
    String doctorFax
    String doctorInfo

    static constraints = {
        number blank: false
        lastname blank: false
        firstname blank: false
        address()
        address2()
        postalCode()
        town blank: false
        dept blank: false
        dob nullable: false
        dmPresent()
        cancelled()
        dead()
        vision inList: ["GOOD","AVERAGE","BAD","VERY_BAD"]
        earing inList: ["GOOD","AVERAGE","BAD","VERY_BAD"]
        mobility inList: ["GOOD","AVERAGE","BAD","VERY_BAD"]
        understanding inList: ["GOOD","AVERAGE","BAD","VERY_BAD"]
        doctorFirstname()
        doctorLastname()
        doctorPhone()
        doctorPhoneNight()
        doctorPhoneMobile()
        doctorFax()
        doctorEmail()
        doctorInfo()
    }

    static transients = [ "age" ]
}
