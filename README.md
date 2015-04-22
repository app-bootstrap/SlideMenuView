SlideMenuView
=============

## Preview

![preview](screenshot/preview.gif)

## Usage

### Installation

copy `SlideMenuView.h`, `SlideMenuView.m` into your project.


Add the following import to the top of the file:

```objc
#import "SlideMenuView.h"
```

### Configuration

```objc
UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:mainSide];
SlideMenuView *slideMenu = [[SlideMenuView alloc] initWithRootController:nav];
...
self.window.rootViewController = slideMenu;
```

## License

The MIT License (MIT)

Copyright (c) 2015 xdf
