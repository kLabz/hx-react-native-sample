if [ -d "bin" ]; then
  create-react-native-app bin
fi

cp template/App.js bin/
cd bin && yarn start