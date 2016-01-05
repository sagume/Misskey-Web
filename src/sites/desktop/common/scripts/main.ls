$ = require 'jquery'

CSRF_TOKEN = $ 'meta[name="csrf_token"]' .attr \content

$.ajax-setup {
	type: \post
	-cache
	xhr-fields: {+with-credentials}
	headers: {
		'csrf-token': CSRF_TOKEN
	}
}

# Disable Back Forward Cache
window.add-event-listener \unload ->
