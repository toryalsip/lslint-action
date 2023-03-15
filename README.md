# lslint action
This is a custom action that uses the lslint utility for checking files written in LSL (Linden Scripting Language).

## Inputs

### `filepath`

The file path to the script or scripts to run lslint on. If left empty it will search all folders in the repo.

### `lslint_version`
The version of lslint to use. Select either `latest` to go off the latest build, or a specific tag. The action will download that version. See the [Makopo/lslint/releases](https://github.com/Makopo/lslint/releases) page to see what tags are available.

## Example usage


```
uses: toryalsip/lslint-action@v2-beta2
with:
    filepath: 'src/'
    lslint_version: 'v1.3'
```
