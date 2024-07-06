#!/bin/bash

# Set the environment to dev

ENVIRONMENT="${1:-dev}"

case "$ENVIRONMENT" in
    dev)
        echo "Starting the application in development mode..."
        npm run start:dev
        ;;
    test)
        echo "Starting the application in test mode..."
        npm run start:test
        ;;
    prod)
        echo "Starting the application in production mode..."
        npm run start:prod
        ;;        
    *)
        echo "Invalid environment selected, valid options are 'dev', 'test' or 'prod'"
        exit 1
        ;;
esac