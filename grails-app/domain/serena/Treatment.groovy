package serena

class Treatment {
    Type type
    String name
    String sinceYear
    String comment

    static belongsTo = [member: Member]

    static constraints = {
        type nullable: false
        sinceYear blank: false
        name blank: false, minSize: 3, maxSize: 50
        comment nullable: true, minSize: 3, maxSize: 50
    }

    enum Type {
        MAIN, ALLERGY, RHUMAT
    }

    String toString() { name }

}

