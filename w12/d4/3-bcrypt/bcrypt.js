const bcrypt = require('bcryptjs');

const hashPass = async(password) => {
    const hash = await bcrypt.hash(password, 10)
    console.log(hash)
    return hash
}

// hashPass('password')

// $2a - algorithm
// $10 - cost factor
// $f40dPWMKQCOaEb504h - next 22 characters = salt
// FjDOKkp11QXLttZkcMAMbNW65ebnjeyWD6G - remaining characters = hash

// $2a$10$f40dPWMKQCOaEb504hFjDOKkp11QXLttZkcMAMbNW65ebnjeyWD6G

const comparePass = async(password, hash) => {
    const isPass = await bcrypt.compare(password, hash)
    console.log(isPass)
    if (isPass) {
        //do something
    } else {
        // do something else
    }
}

comparePass('password', '$2b$10$f40dPWMKQCOaEb504hFjDOKkp11QXLttZkcMAMbNW65ebnjeyWD6G')