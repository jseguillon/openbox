export OS_IDENTITY_API_VERSION="3"
export OS_IMAGE_API_VERSION="2"
export OS_USER_DOMAIN_NAME="DOMAIN_TO_USE"
export OS_TENANT_NAME="eu-west-0"
export OS_AUTH_URL="https://iam.eu-west-0.domain.tld/v3"
export OS_USERNAME="user.login"
# Password should not be stored in this file, prefer use of os_pass function
#export OS_USERNAME="user.login"


function os_pass {
  read -sp  "For user ${OS_USERNAME}, please type OpenStack pass : " OS_PASSWORD;
  export OS_PASSWORD;
  echo OpenStack password is now stored in OS_PASSWORD env var; echo type *os_pass* if you want to change it
}
