npm install -g firebase-tools
bundle exec fastlane snapshot
cp fastlane/screenshots/screenshots.html functions/templates/index.html
cp -r fastlane/screenshots/ja-JP public
cd functions && npm i && cd ..
firebase deploy --token $FIREBASE_TOKEN
curl -X POST --data-urlencode "payload={\"text\": \"<https://snapshotsample-6fe5e.firebaseapp.com/|Snapshot>を更新しました\"}" $SLACK_WEBHOOK_URL
