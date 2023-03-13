# lslint action
This is a custom action that uses the lslint utility for checking files written in LSL (Linden Scripting Language).

## Inputs

## `filename`

**Required** The file path to the script or scripts to run lslint on.
Ex: `src/*.lsl`

## Example usage

```
uses: toryalsip/lslint-action@v0.1beta
with:
    filename: 'src/*.lsl'
```
