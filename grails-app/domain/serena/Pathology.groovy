package serena

class Pathology {

    String name
    String dosage
    String posology
    String comment

    static belongsTo = [member: Member]

    static constraints = {
        name blank: false, size: 3..50
        dosage nullable: true, size: 1..50
        posology blank: false, size: 1..50
        comment nullable: true, size: 3..50
    }

    String toString() { name }


}
