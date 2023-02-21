# Whatsapp API xTrackFoz

Hi, this is the implementation example of <a href="https://github.com/pedroslopez/whatsapp-web.js">whatsapp-web.js</a>

### How to use?

- Clone or download this repo
- Enter to the project directory
- Run `npm install`
- Run `npm run start:dev`
- Open browser and go to address `http://localhost:8000`
- Scan the QR Code
- Enjoy!

### Send message

You can send the message for one number.

**Paramaters:**

- `number` the number
- `message`: the message

Here the endpoint: `/send-message`

### Send media

You can send the media for one number.

**Paramaters:**

- `number` the number
- `file`: the link file
- `mimetype`: the type file (ex: application/pdf)
- `caption`: the label for caption file

Here the endpoint: `/send-media`