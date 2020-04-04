
# Resigner
Resigner is a shell script to resign iOS app's  
This tool takes 10 step to resign an iOS app under **10 seconds**

## Requirements
- mac OS 
- Code signing certificated in Keychain
- Provisioning profile

## Installation

1. Clone the repo inside your working directory

        https://github.com/mohamadrezakoohkan/Resigner
 
 2. Change directory to `Resigner`

        cd Resigner
        
3. Add your provisioning profile to `Resigner` folder  

        cp "YOUR_PROVISIONING_PROFILE".mobileprovision Resigner

4. Add the app you want to resign

        mv "YOUR_APP".ipa Resigner

5. Open `config.env` and edit with your signing certificate and provisioning profile name

  - If you have your signing certificate name in your hand, skip this step
  
        security find-identity -v -p codesigning
        
  - Inside Resigner edit `config.env`
  
        cert="YOUR_CERTIFICATE_IN_KEYCHAIN"
        profile="NEW_PROVISIONING_PROFILE"

6. Change permissions to run this shell script as executable

       chmod +x resigner.sh
       
7. Installation successfully completed, now you can run script whenever you want using:

       ./resigner.sh

## Contact

Follow and contact me on [Instagram](https://www.instagram.com/mohamadreza.codes/),  [Github](https://github.com/mohamadrezakoohkan), [LinkedIn](https://www.linkedin.com/in/mohammad-reza-koohkan-558306160/) and [stack overflow](https://stackoverflow.com/users/9706268/mohamad-reza-koohkan?tab=profile). If you find an issue [open a ticket](https://github.com/mohamadrezakoohkan/Resigner/issues/new). You can send me email at mohamad_koohkan@icloud.com .

## License
Plister is released under the [MIT license](https://github.com/mohamadrezakoohkan/Resigner/blob/master/LICENSE.md).
