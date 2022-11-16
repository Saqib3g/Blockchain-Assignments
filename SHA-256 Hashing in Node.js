// get crypto modeule
const crypto = require("crypto");

// string to be hashed
const str = "I need to be hashed 😃!";


// secret or salt to be hashed with
const secret = "This is a company secret 🤫";

// create a sha-256 hasher
const sha256Hasher = crypto.createHmac("sha256", secret);

// hash the string
// and set the output format
const hash = sha256Hasher.update(str).digest('hex');


// A unique sha256 hash 😃
console.log(hash); // d22101d5d402ab181a66b71bb950ff2892f6d2a1e436d61c4fb1011e9c49a77a
