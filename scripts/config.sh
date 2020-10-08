#!/bin/sh

echo $(which apictl)
apictl version

rm -rf $HOME/.wso2apictl

echo 'setting up dev environment'
apictl add-env -e local \
                    --apim https://localhost:9443 \
                    --token https://localhost:8244/token