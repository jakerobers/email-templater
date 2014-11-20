module.exports = (grunt) ->

  # Load external Grunt task plugins
  grunt.loadNpmTasks "grunt-contrib-jshint"
  grunt.loadNpmTasks "grunt-contrib-qunit"
  grunt.loadNpmTasks "grunt-contrib-uglify"
  grunt.loadNpmTasks "grunt-contrib-concat"
  grunt.loadNpmTasks "grunt-contrib-sass"

  grunt.registerTask "default", ["concat", "jshint", "qunit", "uglify", "sass"]
  grunt.registerTask "test", ["qunit", "jshint"]
	
  # Initialize configuration
  grunt.initConfig

    pkg: grunt.file.readJSON('package.json')

    concat:
      options:
        separator: ";"
      # END options
    
      dist:
        src: ["public/web/<%= pkg.name %>js"]
        dest: "public/web/<%= pkg.name %>.js"
      # END dist
    # END conacat

    jshint:
      files:
        src: ["public/<%= pkg.name %>.js"]
      # END files
    
      options:
        browser: true
        boss: true
        immed: false
        eqnull: true
        evil: true
        globals: {}
      # END options
    # END jshint
    
    qunit:
      all: ["public/html/**/*.html"]
    # End qunit
    
    uglify:
      options:
        sourceMap: true
        compress: true
        preserveComments: false
      # END options
      

  # END grunt.initConfig
# END module.exports 