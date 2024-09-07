## Setup Brick 
1. Install [mason_cli](https://pub.dev/packages/mason_cli):
```sh
dart pub global activate mason_cli
```

2. Activate view bricks
- Using `mason add` command
```sh
mason add feature
  --git-url https://github.com/udemuradov/bricks.git
```


## Usage
### Command Line

![Mason Demo][mason_demo]

```
mason make feature
```

The you will get prompt
```sh
feature?
```
```sh
project?
```


## Available bricks

| Name | Description |
| --- | --- |
| [feature](./feature/README.md) | Feature create |

