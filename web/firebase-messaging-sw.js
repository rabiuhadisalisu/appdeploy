importScripts("https://www.gstatic.com/firebasejs/8.10.1/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/8.10.1/firebase-messaging.js");

firebase.initializeApp({
  apiKey: 'AIzaSyDFN-73p8zKVZbA0i5DtO215XzAb-xuGSE',
  appId: '1:1007019127774:web:4f702a4b5adbd5c906b25b',
  messagingSenderId: '1007019127774',
  projectId: 'rabyte-nride',
  authDomain: 'rabyte-nride.firebaseapp.com',
  databaseURL: 'https://rabyte-nride-default-rtdb.firebaseio.com',
  storageBucket: 'rabyte-nride.appspot.com',
  measurementId: 'G-L1GNL2YV61',
});

const messaging = firebase.messaging();

messaging.setBackgroundMessageHandler(function (payload) {
    const promiseChain = clients
        .matchAll({
            type: "window",
            includeUncontrolled: true
        })
        .then(windowClients => {
            for (let i = 0; i < windowClients.length; i++) {
                const windowClient = windowClients[i];
                windowClient.postMessage(payload);
            }
        })
        .then(() => {
            const title = payload.notification.title;
            const options = {
                body: payload.notification.score
              };
            return registration.showNotification(title, options);
        });
    return promiseChain;
});
self.addEventListener('notificationclick', function (event) {
    console.log('notification received: ', event)
});