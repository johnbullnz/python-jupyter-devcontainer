# Python Jupyter devcontainer

Provides a devcontainer running Python 3.9 and Juptyerlab. Additional Python packages are managed using Poetry.

## Requirements

The following software packages are required:
- VS Code (see https://code.visualstudio.com/download)
- Docker Desktop (see https://docs.docker.com/get-docker)

Within VS Code you will also need to install the following extensions locally:
- Remote-Development
- Docker


## Setup

1. Start Docker Desktop (if not already running)
1. Clone the repository to your local machine

    ```bash
    cd ~/repositories
    git clone git@github.com:johnbullnz/python-jupyter-devcontainer.git
    ```

1. Open the folder in VS Code
1. Reopen the folder in a container. *VS Code will automatically recognise that the folder contains a devcontainer configuration and will prompt you to reopen the folder in a container. Alternatively, open the Command Palette (`Ctrl+Shift+P`, `F1`) and select "Remote-Containers: Reopen in Container".*

It will take a several minutes to create the devcontainer the first time you select *"Reopen in Container"*.


## Usage

Open an integrated terminal window. *If the `.venv` virtual environment is not enabled, restart the terminal window to enable it.*

### Jupyterlab

Start Jupyterlab by running the following command in a terminal window:

```bash
./launch.sh
```

The URL of the Jupyterlab session will be printed on the screen. Click on the link to open Jupyterlab in a web browser.

*Note that VS Code might map the devcontainer port to a different port on your local machine so **copying the link may not work**.*

#### Working directory

Notebooks and local data files should be kept in the `./working` directory.

#### Helper modules

Helper functions and class can be added to the `helpers` package (the `./helpers` directory) and accessed within a notebook using `import helpers`.

#### Installing additional Python packages

The following Python packages are installed by default:

- Pandas
- Numpy
- Matplotlib

Additional Python packages can be installed using Poetry in a VS Code integrated terminal window. For example:

```bash
poetry add scipy
```

Poetry will modify the `pyproject.toml` and `poetry.lock` files meaning that any changes will be applied should the devcontainer be rebuilt.

#### Data persistance

Only files stored in `/workspaces/python-jupyter-devcontainer` will persist on your local hard drive. **Any other changes made to the devcontainer filesystem will be lost when the container is rebuilt.**
