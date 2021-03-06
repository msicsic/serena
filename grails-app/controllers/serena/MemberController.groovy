package serena

import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Transactional(readOnly = true)
class MemberController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [memberInstanceList: Member.list(params), memberInstanceCount: Member.count()]
    }

    def show(Member memberInstance) {
        [memberInstance: memberInstance]
    }

    def create() {
        session.member = new Member(params)
        [memberInstance: session.member]
    }

    def addPathology() {
        Member member = session.member;
        member.addToPathologies(new Pathology())
        [memberInstance: session.member]
        render (view: "member")
    }

    @Transactional
    def save(Member memberInstance) {
        if (memberInstance == null) {
            notFound()
            return
        }

        if (memberInstance.hasErrors()) {
            respond memberInstance.errors, view: 'create'
            return
        }

        memberInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'memberInstance.label', default: 'Member'), memberInstance.id])
                redirect memberInstance
            }
            '*' { respond memberInstance, [status: CREATED] }
        }
    }

    def edit(Member memberInstance) {
        [memberInstance: memberInstance]
    }

    @Transactional
    def update(Member memberInstance) {
        if (memberInstance == null) {
            notFound()
            return
        }

        if (memberInstance.hasErrors()) {
            respond memberInstance.errors, view: 'edit'
            return
        }

        memberInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Member.label', default: 'Member'), memberInstance.id])
                redirect memberInstance
            }
            '*' { respond memberInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Member memberInstance) {

        if (memberInstance == null) {
            notFound()
            return
        }

        memberInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Member.label', default: 'Member'), memberInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'memberInstance.label', default: 'Member'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
