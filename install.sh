#!/usr/bin/env bash

# Get the width of the terminal
terminal_width=$(tput cols)

print_logo() {
    clear
    if [ "$terminal_width" -gt 120 ]; then
        echo -e """
\033[34m            ▓▓▓▓▓▓\033[97m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒
\033[34m           ▓▓▓▓▓▓\033[97m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
\033[34m          ▓▓▓▓▓▓\033[97m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
\033[34m          ▓▓▓▓▓ \033[97m ▒▒▒▒       ▒▒▒
\033[34m         ▓▓▓▓▓▓\033[97m ▒▒▒▒       ▒▒▒
\033[34m        ▓▓▓▓▓▓\033[97m ▒▒▒▒       ▒▒▒▒
\033[34m        ▓▓▓▓▓ \033[97m ▒▒▒▒      ▒▒▒▒
\033[34m       ▓▓▓▓▓▓\033[97m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒
\033[34m      ▓▓▓▓▓▓\033[97m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
\033[34m     ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓\033[97m ▒▒▒▒▒▒▒ ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒           ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒    ▒▒▒▒▒▒ ▒▒▒▒▒▒
\033[34m     ▓▓▓▓▓▓▓▓▓▓▓▓▓▓\033[97m ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒           ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒    ▒▒▒▒▒▒  ▒▒▒▒▒▒▒
\033[34m    ▓▓▓▓▓▓▓▓▓▓▓▓▓▓ \033[97m ▒▒▒▒▒▒▒ ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ ▒▒▒▒▒▒           ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ ▒▒▒▒▒▒    ▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒▒
\033[34m   ▓▓▓▓▓▓         \033[97m ▒▒▒▒▒▒▒ ▒▒▒▒▒▒           ▒▒▒▒▒▒▒           ▒▒▒▒▒▒     ▒▒▒▒▒▒  ▒▒▒▒▒▒    ▒▒▒▒▒▒ ▒▒▒▒▒▒ ▒▒▒▒▒
\033[34m   ▓▓▓▓▓ \033[97m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒           ▒▒▒▒▒▒           ▒▒▒▒▒▒     ▒▒▒▒▒▒  ▒▒▒▒▒▒    ▒▒▒▒▒▒  ▒▒▒▒▒▒  ▒▒▒▒▒
\033[34m  ▓▓▓▓▓▓\033[97m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒           ▒▒▒▒▒▒           ▒▒▒▒▒▒      ▒▒▒▒▒▒ ▒▒▒▒▒▒    ▒▒▒▒▒▒  ▒▒▒▒▒▒    ▒▒▒▒▒
\033[34m ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓\033[97m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
\033[34m▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ \033[97m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 
\033[34m▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ \033[97m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒\033[0m
$1
"""
    else
        echo """-= AgentCloud =-
$1"""
    fi
}

docker_up() {
    if [ $# -eq 1 ]; then
        local service_name=$1
        docker-compose up "$service_name" -d
        if [ $? -ne 0 ]; then
            echo "Couldn't start docker services, ensure the docker daemon is running then try again"
            exit 1
            # We could start the docke rservice but then we have to cater to multiple init systems
            # docker_up $1
		fi
    else
        echo "Usage: docker_up <service_name>"
    fi
}

print_logo

# get git hash of current repo for footer
export SHORT_COMMIT_HASH=$(git rev-parse --short HEAD)
echo "=> Welcome to Agentcloud! (rev-$SHORT_COMMIT_HASH)"

# ask for CGP/GCS stuff
read -p "Enter your GCP project ID: " PROJECT_ID
export PROJECT_ID
read -p "Enter the file path of your GCP service account json: " SERVICE_ACCOUNT_JSON_PATH
cp $SERVICE_ACCOUNT_JSON_PATH webapp/keyfile.json
read -p "Enter the GCS bucket name to use: " GCS_BUCKET_NAME
export GCS_BUCKET_NAME
read -p "Enter the GCS bucket location: " GCS_BUCKET_LOCATION
export GCS_BUCKET_LOCATION
read -p "Enter your OpenAI API key: " OPENAI_API_KEY
export OPENAI_API_KEY

print_logo "=> Starting rabbitmq, qdrant and vector_db_proxy"

# startup rqbbitmq, qdrant, and vector proxy in advance
docker_up qdrant
docker_up vector_db_proxy

print_logo "=> Starting airbyte"

# clone and install airbyte
if [ ! -d "airbyte" ] ; then
	git clone --depth=1 https://github.com/airbytehq/airbyte.git
fi
cd airbyte
./run-ab-platform.sh -b
cd ..

# bypass airbyte setup sceeen
INSTANCE_CONFIGURATION=`curl 'http://localhost:8000/api/v1/instance_configuration/setup' -X POST -H 'Accept: */*' -H 'Accept-Language: en-US,en;q=0.5' -H 'Accept-Encoding: gzip, deflate, br' -H 'Referer: http://localhost:8000/setup' -H 'content-type: application/json' -H 'x-airbyte-analytic-source: webapp' -H 'Origin: http://localhost:8000' -H 'Authorization: Basic YWlyYnl0ZTpwYXNzd29yZA==' -H 'Connection: keep-alive' \
	--data-raw '{"email":"localhost@localhost.localdomain","anonymousDataCollection":false,"securityCheck":"succeeded","organizationName":"localhost","initialSetupComplete":true,"displaySetupWizard":false}'`
export AIRBYTE_ADMIN_WORKSPACE_ID=`echo $INSTANCE_CONFIGURATION | jq -r '.defaultWorkspaceId'`
CREATED_DESTINATION=`curl 'http://localhost:8000/api/v1/destinations/create' --compressed -X POST -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:120.0) Gecko/20100101 Firefox/120.0' -H 'Accept: */*' -H 'Accept-Language: en-US,en;q=0.5' -H 'Accept-Encoding: gzip, deflate, br' -H 'Referer: http://localhost:8000/workspaces/7b1abeef-4c09-4cad-b23d-539bc236c597/destination/new-destination/e06ad785-ad6f-4647-b2e8-3027a5c59454' -H 'content-type: application/json' -H 'x-airbyte-analytic-source: webapp' -H 'Origin: http://localhost:8000' -H 'DNT: 1' -H 'Authorization: Basic YWlyYnl0ZTpwYXNzd29yZA==' -H 'Connection: keep-alive' \
             --data-raw '{"name":"RabbitMQ","destinationDefinitionId":"e06ad785-ad6f-4647-b2e8-3027a5c59454","workspaceId":"'"$AIRBYTE_ADMIN_WORKSPACE_ID"'","connectionConfiguration":{"routing_key":"key","username":"guest","password":"guest","exchange":"agentcloud","port":5672,"host":"0.0.0.0","ssl":false}}'`
export AIRBYTE_ADMIN_DESTINATION_ID=`echo $CREATED_DESTINATION | jq -r '.destinationId'`

print_logo "=> Starting agentcloud backend..."

docker-compose up