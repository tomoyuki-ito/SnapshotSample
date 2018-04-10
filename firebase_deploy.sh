npm install -g firebase-tools
bundle exec fastlane snapshot
cp fastlane/screenshots/screenshots.html functions/templates/index.html
cp -r fastlane/screenshots/ja-JP public
cd functions && npm i && cd ..
firebase deploy --token $FIREBASE_TOKEN
