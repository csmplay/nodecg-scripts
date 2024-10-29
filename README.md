# nodecg-installer

Installer scripts that install CSM NodeCG and CSM bundles

## Usage

Ensure that you have Node.js and git installed.

#### Linux:

1. Install Git using your package manager
2. Install Node.js using your package manager
3. `git clone -b linux https://github.com/csmplay/nodecg-installer`
4. Use `update-install.sh` and `run.sh` when needed

If running on server better to use pm2 to run nodecg in background.

```bash
pm2 start nodecg
```

For Windows
[switch branch to windows](https://github.com/csmplay/nodecg-installer/tree/windows)
