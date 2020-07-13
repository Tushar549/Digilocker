package DigilockerSecurity

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode(includes='authority')
@ToString(includes='authority', includeNames=true, includePackage=false)
class Role implements Serializable {

        public static final String ROLE_STUDENT="ROLE_STUDENT"
        public static final String ROLE_ADMIN="ROLE_ADMIN"
        public static final String ROLE_TNP="ROLE_TNP"
	private static final long serialVersionUID = 1

	String authority

	Role(String authority) {
		this()
		this.authority = authority
	}

	static constraints = {
		authority blank: false, unique: true, nullable:false
	}

	static mapping = {
		cache true
	}
}
