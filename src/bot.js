five = require("johnny-five");
board = new five.Board({
  debug: false
});

board.on("ready", function() {
    var servo1 = five.Servo(9);
    var servo2 = five.Servo(10);
    var servo3 = five.Servo(11);

    board.repl.inject({
      servo1: servo1,
      s1: servo1,
      servo2: servo2,
      s2: servo2,
      servo3: servo3,
      s3: servo3
    });

    var min = 50;
    var max = 150;

    var range = max - min;
    servo1.to(min);
    servo2.to(min);
    servo3.to(min);

    var dance = function() {
      servo1.to(parseInt((Math.random() * range) + min, 10));
      servo2.to(parseInt((Math.random() * range) + min, 10));
      servo3.to(parseInt((Math.random() * range) + min, 10));
    };

    var dancer;

    start_dance = function() {
      if (!dancer) dancer = setInterval(dance, 500);
    }

    stop_dance = function() {
      if (dancer) {
        clearInterval(dancer);
        dancer = null;
      }
    }

    board.repl.inject({
      dance: start_dance,
      chill: stop_dance
    });

    servo1.on("error", function() {
      console.log(arguments);
    })
    servo2.on("error", function() {
      console.log(arguments);
    })
    servo3.on("error", function() {
      console.log(arguments);
    })
});
