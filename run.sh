echo "stopping current server..."
kill `lsof -n -iTCP:7000 -sTCP:LISTEN -t`

echo "starting new server build..."
NODE_ENV=production nohup node target/server/index.js > output.log &
