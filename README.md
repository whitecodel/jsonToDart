# jsontodart

`jsontodart` is a powerful command-line tool designed to streamline the process of generating Dart model classes from JSON data. Ideal for developers working with Flutter, it supports JSON files, URLs, and is available as a web tool and a Visual Studio Code extension.

**Web Version**: [WhiteCodel JSON to Dart Tool](https://tools.whitecodel.com/json_to_dart)  
**VSCode Extension**: [WhiteCodel JSON to Dart](https://marketplace.visualstudio.com/items?itemName=WhiteCodel.whitecodel-json-to-dart)

## Key Features

- **Generate Dart Classes**: Quickly generate Dart model classes from JSON files or URLs
- **Customizable Options**: Control null safety, property requirements, final properties, and more
- **Encoder/Decoder Inclusion**: Automatically add encoder and decoder functions
- **CopyWith Method**: Generate `copyWith` methods for easier manipulation of model instances
- **CLI, Web, and VSCode**: Use directly in your terminal, on the web, or within VSCode

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Options](#options)
- [Examples](#examples)
- [Web and VSCode](#web-and-vscode)
- [Future Enhancements](#future-enhancements)
- [Contributing](#contributing)
- [License](#license)

## Installation

### Using `curl`

Install `jsontodart` in your command line by running:

```bash
curl -fsSL https://raw.githubusercontent.com/whitecodel/jsontodart/refs/heads/main/install.sh | bash
```

**Note**: This script detects your operating system and installs the appropriate executable in your PATH.

### Manual Installation

1. **Download the correct executable** for your operating system from the Releases page
2. **Place the executable in a directory** within your PATH:
   - macOS/Linux: `/usr/local/bin`
   - Windows: `C:\Windows\System32`
3. **Make the file executable**:
   - Linux/macOS: `chmod +x /path/to/jsontodart`
   - Windows: Place `jsontodart-win.exe` in a PATH directory

## Usage

Run `jsontodart` from the command line with your JSON source:

```bash
jsontodart -s <source>
```

This command converts JSON data into Dart model classes with the specified options.

### Flutter Project Integration

Integrate `jsontodart` directly into your Flutter project to quickly generate model classes for API responses or local JSON files. The tool supports JSON from both files and URLs, simplifying your workflow when dealing with dynamic JSON sources.

## Options

Customize your Dart models with the following command-line options:

| Option | Long Form | Description | Default |
|--------|-----------|-------------|---------|
| `-s` | `--source` | JSON file path or URL (required) | - |
| `-o` | `--outputDir` | Directory for generated Dart classes | `models` |
| `-c` | `--className` | Name of the main class | Inferred from JSON |
| `-n` | `--nullSafety` | Enable null safety | `true` |
| `-e` | `--putEncoderDecoderInClass` | Include encoder/decoder in the class | `true` |
| `-r` | `--makeAllRequired` | Make all properties required | `false` |
| `-f` | `--makeAllFinal` | Make all properties final | `false` |
| `-w` | `--generateCopyWith` | Generate a `copyWith` method | `false` |
| `-m` | `--numForNumber` | Use `num` for number types | `true` |

## Examples

### Generating a Simple Dart Class

```bash
jsontodart -s data.json -o models -c UserModel -n -e -r
```

Generates a Dart class named `UserModel` from `data.json` with null safety, required properties, and encoder/decoder functions.

### Using URL as Source

```bash
jsontodart -s https://example.com/data.json -o models -c ExampleModel
```

Generates a Dart class from JSON data at the specified URL.

## Web and VSCode

### Web Tool

If you prefer a graphical interface, use the [WhiteCodel JSON to Dart Tool](https://tools.whitecodel.com/json_to_dart) to convert JSON into Dart code. This tool includes the same options and is ideal for quick conversions without command-line usage.

### VSCode Extension

The [WhiteCodel JSON to Dart VSCode extension](https://marketplace.visualstudio.com/items?itemName=WhiteCodel.whitecodel-json-to-dart) provides seamless JSON-to-Dart conversion directly within Visual Studio Code. With this extension, simply paste your JSON in the left panel and see the generated Dart model on the right. This integration is perfect for Flutter developers who want to streamline their workflow within the IDE.

## Future Enhancements

- **Postman Integration**: Import Postman JSON directly
- **Authorization Support**: Securely fetch JSON data from authenticated APIs
- **Additional Data Formats**: Support for XML and CSV
- **More CLI Options**: Include type aliases and advanced type handling
