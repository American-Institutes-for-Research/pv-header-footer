pipeline{
    environment{
        DATA_BUILD_DATA_DIR='data-build/output'
        WEB_BUILD_DATA_DIR='data'
        DATA_VOLUME='/data-volume'
        HOME='.'
    }
    agent{
        dockerfile{
            args  "-v /pv_export_volume:/data-volume -v /var/lib/jenkins/.ssh/:/home/jenkins/.ssh/ --entrypoint=''"
        }
    }
    stages{

        // ################################################################################################
        // Step 1. Create the ini file
        stage('update-ini-init'){
            steps{

                // Step 1.
                configFileProvider(
                    [configFile(fileId: '2663ef4b-eb12-49df-b922-930a17bbac67', variable: 'CNF')]) {
                        sh 'cat "$CNF" >> .my.cnf'
                    }
                configFileProvider(
                    [configFile(fileId: '7106dfad-5402-4188-ae30-2a2c5adfb515', variable: 'CNF')]) {
                        sh 'cat "$CNF" >> .my.cnf'
                    }
                configFileProvider(
                    [configFile(fileId: 'f9352461-c5e0-4794-9558-d1c57205342e', variable: 'CNF')]) {
                        sh 'cat "$CNF" >> .my.cnf'
                    }

                sh 'mkdir -p ~/.aws'
                configFileProvider(
                    [configFile(fileId: 'bebda31a-597c-4687-8bd3-03aebf92385e', variable: 'CNF')]) {
                    sh 'cat "$CNF" >> .aws/config'
                }
                configFileProvider(
                    [configFile(fileId: '46e89014-8038-47a8-9ccd-d672268ffe76', variable: 'CNF')]) {
                    sh 'cat "$CNF" >> .aws/credentials'
                }

                // Step 2.
                script{
                    def stringenvironment="DEV"
                    if (params.live){
                        stringenvironment="PROD"
                    }
                    timestamp = sh (returnStdout: true, script: "mysql --defaults-extra-file=.my.cnf --defaults-group-suffix=accessbot -B -N -e \"SELECT \\`value\\` FROM config, environment WHERE environment.id = config.environment_id AND environment.environment_category = 'WT' AND environment.environment_type = '${stringenvironment}' AND \\`key\\` = 'timestamp';\"").trim()
                }

                // Step 3.
                script{
                    sh(script: "npm install")
                }


            }
            post {
                success {
                    slackSend channel: '#pv-build-alerts',
                    color: '#0b6e4f',
                    message: "Header-Footer Date : The init step of ${currentBuild.fullDisplayName} completed successfully for ${timestamp}"
                }
                failure {
                    slackSend channel: '#pv-build-alerts',
                    color: '#992a2c',
                    message: "Header-Footer Date : The init step of ${currentBuild.fullDisplayName} failed"
                }
            }
        } // end stage 

        // Step 2. replace date 
        stage("update-timestamp"){

            steps {
                script {
                    def stringenvironment="DEV"
                    if(params.live){
                        stringenvironment="PROD"
                    }

                    sh (script: "./update_date.sh ./.my.cnf ${stringenvironment} ./header_footer_src/components/footer.vue"  )
                }

            } // end steps 

            post {
                success {
                    slackSend channel: '#pv-build-alerts',
                    color: '#0b6e4f',
                    message: "Header-Footer Date : The update step of ${currentBuild.fullDisplayName} completed successfully for ${timestamp}"
                }
                failure {
                    slackSend channel: '#pv-build-alerts',
                    color: '#992a2c',
                    message: "Header-Footer Date : The update step of ${currentBuild.fullDisplayName} failed"
                }
            }

        } // end stage


        stage("upload-header-footer-s3"){

            steps {

                // step 1. npm build to get header_footer.js file
                script{
                    
                    sh (script: "npm run build")

                }
                
                // step 2. upload
                sh (script: "aws s3 cp header_footer.js  s3://pv-build-resources/")

            } // end steps 


            // step 3. slack
            post{

                success {

                    slackSend channel: "#pv-build-alerts",
                    color: "#0b6e4f",
                    message: "Header-Footer: header_footer.js uploaded to s3"

                } // end success

                failure {
                    slackSend channel: "#pv-build-alerts",
                    color: "#992a2c",
                    message: "Header-Footer: header_footer.js upload to s3 failed"

                } // end failure

            } // end post


        } // end stage

        // ################################################################################################
    }
}












