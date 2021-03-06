#!/bin/bash
. config.env
. constants.env
. methods.sh

delete Payload

step "Define IPA name:"
unarchive

step "Root of project:"
locate

step "Removing _CodeSignature"
delete _CodeSignature

verificationRequest "Do you wish to remove PlugIns?"
verify PlugIns

step "Replace provisioning profile"
setProfile ${profile}

step "Signing IPA"
sign "$cert"

step "Please define IPA name to archive:"
archive

step "Payload removed"
delete Payload

step "Signed IPA generated"
locate "/$ipaName.ipa"
