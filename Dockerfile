FROM alpine
RUN apk --no-cache add curl

### Installing IBMCloud login cli and plugins
#   IBMCloud cli
RUN curl -fsSL https://clis.cloud.ibm.com/install/linux | sh

#   Installing IBMCloud cli plugins
RUN ibmcloud plugin repo-plugins --output json | jq --raw-output  '."IBM Cloud"' | jq -r .[].name | while read plugin; do \
    ibmcloud plugin install -f -r 'IBM Cloud' $plugin; \
    done


### Install utilities
#   kubectl
RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x ./kubectl &&  \
    mv ./kubectl /usr/local/bin/kubectl && \

#   jq
    curl -sSL -o /usr/bin/jq https://github.com/stedolan/jq/releases/download/jq-$JQ_VERSION/jq-linux64 && \
    chmod +x /usr/bin/jq && \

#   yq
    wget $(curl -s https://api.github.com/repos/mikefarah/yq/releases/latest | grep browser_download_url | grep linux_amd64 | cut -d '"' -f 4) -O /usr/bin/yq && \
    chmod +x /usr/bin/yq
