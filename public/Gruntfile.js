
module.exports = function(grunt) {
    grunt.initConfig({
        concat: {
            options: {
                separator: ';',
            },
            framework: {
                src: [
                    'vendor/jquery/dist/jquery.js',
                    'vendor/bootstrap/js/bootstrap.js',
                    'vendor/node-waves/waves.js',
                    'vendor/jquery-validation/jquery.validate.js',
                    'vendor/GridGallery/GridGallery/js/modernizr.custom.js',
                    'vendor/GridGallery/GridGallery/js/imagesloaded.pkgd.min.js',
                    'vendor/GridGallery/GridGallery/js/masonry.pkgd.min.js',
                    'vendor/GridGallery/GridGallery/js/classie.js',
                    'vendor/GridGallery/GridGallery/js/cbpGridGallery.js',
                    'vendor/perfect-scrollbar/perfect-scrollbar.jquery.min.js',
                    'vendor/jquery-validation/dist/jquery.validate.min.js',
                    'vendor/jquery.growl/javascripts/jquery.growl.js',
                    'vendor/typeahead.js/dist/typeahead.bundle.min.js',
                    'vendor/responsivejs/responsive.min.js',
                    'vendor/moment/min/moment.min.js',
                    'vendor/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js',
                    'vendor/bootstrap-select/js/bootstrap-select.js',
                    'vendor/jquery-slimscroll/jquery.slimscroll.js',
                    'vendor/jquery-countto/jquery.countTo.js',
                    'vendor/tabSelect/tabSelect.js',
                    'vendor/clipboard/dist/clipboard.js',
                    'vendor/jquery-simplecolorpicker/jquery.simplecolorpicker.js',
                    'vendor/bootstrap-toggle-master/js/bootstrap2-toggle.min.js'


                ],
                dest: 'dist/js/framework.js'
            },
            app: {
                src: [
                    'src/js/main.js',
                ],
                dest: 'dist/js/main.js'
            }
        },
        uglify: {
            options: {
                mangle: false,
                stripBanners: true
            },
            js: {
                files: {
                    'dist/js/framework.js': ['dist/js/framework.js'],
                    'dist/js/main.js': ['dist/js/main.js']
                }
            }
        },
        cssmin: {
          options: {
            shorthandCompacting: false,
            roundingPrecision: -1
          },
          target: {
            files: {
              'dist/css/style.min.css': ['vendor/fullpage.js/jquery.fullPage.css','src/css/style.css']
            }
          }
        },
        watch: {
          files: ['src/js/main.js'],
          tasks: ['default']
        }
    })

    grunt.loadNpmTasks('grunt-contrib-concat');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-cssmin');
    grunt.loadNpmTasks('grunt-contrib-watch');
    //grunt.registerTask('watch', ['watch']);
    grunt.registerTask('default', ['concat','uglify']);
}