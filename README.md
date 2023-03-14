# lslint action
This is a custom action that uses the lslint utility for checking files written in LSL (Linden Scripting Language).

## Inputs

## `filepath`

The file path to the script or scripts to run lslint on. If left empty it will search all folders in the repo.
Ex: `src/`

## Example usage


```
uses: toryalsip/lslint-action@v2-beta2
with:
    filepath: 'src/'
```
