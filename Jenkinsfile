#!/usr/bin/env groovy

@Library('lco-shared-libs@0.0.15') _

pipeline {
	agent any
	stages {
		stage('Build Docker image') {
			steps {
				sh 'make'
			}
		}
	}
	post {
		always { postBuildNotify() }
	}
}
