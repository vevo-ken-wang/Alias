module.exports = (grunt)->

  grunt.initConfig
    clean:
      app: ['js'] #cleans files from js directory

    coffee:
      app:
        expand: true
        cwd: './coffee'
        options: bare: true
        src: ['./**/*.coffee']
        dest: './js'
        ext: '.js'

    watch:
      coffee:
        files: ['coffee/**/*.coffee']
        tasks: ['coffee']
      styles:
        files: ['assets/styl/**/*.styl']
        tasks: ['stylus']

    stylus:
      app:
        files:
          'assets/css/app.css':'assets/styl/main.styl'

    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-clean'
    grunt.loadNpmTasks 'grunt-contrib-watch'
    grunt.loadNpmTasks 'grunt-contrib-stylus'

    grunt.registerTask 'default', ['compile']
    grunt.registerTask 'compile', ['clean', 'coffee', 'stylus']

    grunt.registerTask 'server', ['compile', 'server:start']
    grunt.registerTask 'server:start', 'starts local node server', ->
      spawnOptions = 
        cmd:'node'
        args:['./js/server.js']
      grunt.util.spawn spawnOptions
    
      grunt.task.run('watch')
