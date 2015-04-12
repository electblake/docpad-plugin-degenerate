# Export Plugin
module.exports = (BasePlugin) ->
	# Define Plugin
	class DegeneratePlugin extends BasePlugin
		# Plugin name
		name: 'degenerate'

		generateBefore: (opts) ->
			docpad = @docpad
			docpad.log 'debug-generate:', 'Generation Started..'

			@
		conextualizeBefore: (opts) ->
			docpad = @docpad
			docpad.log 'debug-generate:', 'Contextualizing files..'

			@
		contextualizeAfter: (opts) ->
			docpad = @docpad
			docpad.log 'debug-generate:', '--> Contextualized files!'

			@
		renderBefore: (opts) ->
			docpad = @docpad
			docpad.log 'debug-generate:', '--> Rendering files..'
			
			fs = require 'fs'
			content = JSON.stringify opts, null, 4
			fs.writeFile './cache/renderBefore.json', content, (err) ->
				docpad.log 'error:', err if err

			@
		renderAfter: (opts) ->
			docpad = @docpad
			docpad.log 'debug-generate:', '--> Rendered files!'

			@
		populateCollectionsBefore: (opts) ->
			docpad = @docpad
			docpad.log 'debug-generate:', '--> Populating collections..'

			@
		populateCollectionsAfter: (opts) ->
			docpad = @docpad
			docpad.log 'debug-generate:', '--> Populated collections!!'

			@
		# Render
		# Called per document, for each extension conversion. Used to render one extension to another.
		render: (opts) ->
			# Prepare
			{inExtension,outExtension,file} = opts

			# Done
			@
