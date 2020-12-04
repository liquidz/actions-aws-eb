# AWS eb command

## Inputs

### `command`

**Required** The command to run on cli.

## Example usage

```YAML
uses: bloodyowl/actions-aws-eb@v1.0.3
with:
  command: 'eb deploy ${{ secrets.ENVIRONMENT_NAME }}'
env:
  AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
  AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
  AWS_DEFAULT_REGION: "us-east-1"
```
