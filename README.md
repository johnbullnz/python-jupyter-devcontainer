# Python Jupyter devcontainer

*Docker devcontainer with Jupyterlab.*

## Requirements

The following software is required:
- VS Code (see https://code.visualstudio.com/download)
- Docker Desktop (see https://docs.docker.com/get-docker)

The following VS Code extensions are required:
- Remote-Development
- Docker


## Setup

1. Clone the repository on your local machine.

    ```bash
    cd ~/repositories
    git clone git@github.com:johnbullnz/python-jupyter-devcontainer.git
    ```

1. Open the folder in VS Code.

1. Reopen the folder in a container. *VS Code will automatically recognise that the folder contains a devcontainer configuration and will prompt you to reopen the folder in a container. Alternatively, open the Command Palette (`Ctrl+Shift+P`, `F1`) and select "Remote-Containers: Reopen in Container".*

It will take a few minute to create the devcontainer the first time you select *"Reopen in Container"*.


## Usage

### Start Jupyterlab

Once connected to the devcontainer you can start Jupyterlab by running the following command in a terminal window.

```bash
jupyter lab --allow-root
```

The URL of the Jupyterlab session will be printed on the screen. Click on the link or copy it to a web browser. 

### Working

Notebooks and local data files should be kept in the `./working` directory.

### Helper modules

Helper functions and class can be added to the `helpers` package and accessed within a notebook using `import helpers`.

### Installing additional Python packages

Additional Python packages can be installed using Poetry:

```bash
poetry add pandas
```
