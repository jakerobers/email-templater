module.exports = (grunt) ->

  # Load external Grunt task plugins
  grunt.loadNpmTasks "grunt-contrib-uglify"
  grunt.loadNpmTasks "grunt-contrib-concat"
  grunt.loadNpmTasks "grunt-contrib-sass"
  grunt.loadNpmTasks "grunt-haml2html"

  grunt.registerTask "default", ["concat", "uglify", "sass"]

  # Reset built.css bsfore concatting
  grunt.file.write("priv/static/js/built.js", "")
	
  # Initialize configuration
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')

    haml:
      web:
        files:
          "web/templates/page/web/index.html.eex": "precompiled/haml/web/index.haml"
        # END files
      # END web
    # END haml
    
    sass:
      web:
        options:
          style: "expanded"
        # END options

        files:
          "priv/static/css/web/style.css": "precompiled/sass/web/style.sass"
        # END files
      # END web
    # END sass

    concat:
      web_js:
        options:
          separator: ";"
        # END options
        src: ["precompiled/coffee/**/*.coffee"]
        dest: "priv/static/js/built.js"
      # END web_js

      web_css:
        src: ["priv/static/css/web/**/*.css"]
        dest: "priv/static/css/built.css"
      # END web_js
    # END conacat
    
    uglify:
      my_target:
        files:
          "priv/static/js/built.min.js": ["priv/static/js/built.js"]
      options:
        mangle: true
        compress: true
        preserveComments: false
      # END options
    # END uglify
  # END grunt.initConfig
# END module.exports 
