# PCA9685

[![Build Status](https://github.com/Kaiede/PCA9685/workflows/CI/badge.svg)](https://github.com/Kaiede/PCA9685/actions)
[![MIT license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)

![Swift](https://img.shields.io/badge/Swift-5.x-brightgreen.svg?style=flat)
![Swift](https://img.shields.io/badge/Swift-4.x-brightgreen.svg?style=flat)
![Swift](https://img.shields.io/badge/Swift-3.x-brightgreen.svg?style=flat)

![SwiftPM](https://img.shields.io/badge/SwiftPM-✔-blue.svg?style=flat)

![Raspbian](https://img.shields.io/badge/OS-Raspbian-green.svg)

A Swift driver for the PCA9685 PWM controller over I2C, using SwiftyGPIO.

## Getting Started

A simple example looks like this:

```
// It doesn't really matter what Raspberry Pi Board you use.
// C.H.I.P. should also work.
let pca9685 = PCA9685(supportedBoard: .RaspberryPiPlusZero)

// This sets the frequency for all channels
// Range: 24 - 1526 Hz
pca9685.frequency = 1440 // Hz

// Can set an individual channel's on and off steps.
// Range: 0 - 4095 Steps
// Example: ~50% Duty Cycle
pca9685.setChannel(0, onStep: 0, offStep: 2048)

// Or all channels at once
pca9685.setAllChannels(onStep: 0, offStep: 0)
```

## Built With

* [SwiftyGPIO](https://github.com/uraimo/SwiftyGPIO)
* [Adafruit-PCA9685](https://github.com/adafruit/Adafruit_Python_PCA9685) - Inspiration/Basis of Implementation.

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Authors

* **Adam Thayer** - *Initial work* - [Kaiede](https://github.com/Kaiede)

See also the list of [contributors](https://github.com/Kaiede/RPiLight/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
