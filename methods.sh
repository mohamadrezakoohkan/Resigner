
checkSigningCertificates() {
    security find-identity -v -p codesigning
}

step() {
    stepper=$((stepper + 1))
    echo ${cyan}${bold}[${stepper}]${norm} ${green}$1${norm};
}

unarchive() {
    read file
    unzip -q ${file}.ipa
    cd Payload
    cd */
}

archive() {
    read ipaName
    zip -q -r ${ipaName}.ipa Payload
}

locate() {
    pwd | pbcopy
    echo "$(pbpaste)$1"
    
}

delete() {
    rm -rf $1
}

warning() {
    echo "${yellow}${bold}Please answer y for yes or n for no.${norm}"
}

verificationRequest() {
 step "$1 ${yellow}${bold}[y/n] ${norm}";
}

verify() {
    while true; do
        read yn
        case $yn in
            "y" ) delete $1; break;;
            "n" ) break;;
            * ) warning;;
        esac
    done
}

setProfile() {
    cp $1 embedded.mobileprovision
    cd ../..
}

sign() {
    codesign -d --verbose -f -s  "$1" $(pbpaste)
}

