

// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.useBasicAuth = true
grails.plugin.springsecurity.userLookup.userDomainClassName = 'DigilockerSecurity.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'DigilockerSecurity.UserRole'
grails.plugin.springsecurity.authority.className = 'DigilockerSecurity.Role'
grails.plugin.springsecurity.logout.postOnly = false

grails.plugin.springsecurity.controllerAnnotations.staticRules = [
	[pattern: '/',               access: ['permitAll']],
	[pattern: '/error',          access: ['permitAll']],
	[pattern: '/index',          access: ['permitAll']],
	[pattern: '/index.gsp',      access: ['permitAll']],
	[pattern: '/shutdown',       access: ['permitAll']],
	[pattern: '/assets/**',      access: ['permitAll']],
	[pattern: '/**/js/**',       access: ['permitAll']],
	[pattern: '/**/css/**',      access: ['permitAll']],
	[pattern: '/**/images/**',   access: ['permitAll']],
	[pattern: '/**/favicon.ico', access: ['permitAll']],
        [pattern: '/student/*', 	 access: ['ROLE_STUDENT','ROLE_ADMIN']],
	[pattern: '/admin/*', 		 access: ['ROLE_ADMIN']],
        [pattern: '/tnp/*',             access: ['ROLE_TNP','ROLE_ADMIN']]
]

grails.plugin.springsecurity.filterChain.chainMap = [
	[pattern: '/assets/**',      filters: 'none'],
	[pattern: '/**/js/**',       filters: 'none'],
	[pattern: '/**/css/**',      filters: 'none'],
	[pattern: '/**/images/**',   filters: 'none'],
	[pattern: '/**/favicon.ico', filters: 'none'],
	[pattern: '/**',             filters: 'JOINED_FILTERS']
]

