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
    Date dateOfBirth
    Boolean dmPresent
    Boolean cancelled
    Boolean dead
    String vision
    String hearing
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
    Integer getAge() {
        return dateOfBirth.age();
    }
    Date dateCreated
    Date lastUpdated

    static transients = [ 'age' ]

    static hasMany = [
            pathologies: Pathology,
            treatments: Treatment
    ]

//    static mapping = {
//        autoTimestamp true
//    }

    static constraints = {
        number blank: false, size: 3..8
        lastname blank: false, size: 2..30
        firstname blank: false, size: 2..30
        address nullable: true
        address2 nullable: true
        postalCode nullable: true, size: 5..5
        town blank: false
        dept blank: false
        tel()
        dateOfBirth nullable: false
        age()
        dmPresent()
        cancelled()
        dead()
        vision inList: ["GOOD","AVERAGE","BAD","VERY_BAD"], nullable: true
        hearing inList: ["GOOD","AVERAGE","BAD","VERY_BAD"], nullable: true
        mobility inList: ["GOOD","AVERAGE","BAD","VERY_BAD"], nullable: true
        understanding inList: ["GOOD","AVERAGE","BAD","VERY_BAD"], nullable: true
        pathologies()
        treatments()
        doctorFirstname nullable: true
        doctorLastname nullable: true
        doctorPhone nullable: true
        doctorPhoneNight nullable: true
        doctorPhoneMobile nullable: true
        doctorFax nullable: true
        doctorEmail nullable: true, email: true
        doctorInfo nullable: true
    }
}
