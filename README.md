# Example-self-hosting-gpt

If there is a GPU, it is better to use the GPU for self-hosting Ollama.
However, since this is a test of self-hosting, i conducted the test using a CPU (4 cores) and 32GB of memory.

> **Note**  
> It's really slow if you only use CPU, RAM, but it's useful if you use a local GPU.

![It is really slow.](Test.gif)

## Prerequisites

- Docker
- Make

## Installation

### Docker

1. [Install Docker](https://docs.docker.com/engine/install/rhel/)
2. Register Docker service
   ```shell
   sudo systemctl enable docker
   sudo systemctl start docker
     ```
3. Add user to docker group
   ```shell
   sudo usermod -aG docker $USER
   sudo chown $USER:docker /var/run/docker.sock
   sudo chmod 660 /var/run/docker.sock
    ```

### Make

1. Install make
   ```shell
   sudo yum install make
    ```

## Usage

1. Clone the repository
   ```shell
   git clone https://github.com/jongmin-chung/example-self-hosting-gpt.git
    ```

2. Change directory
   ```shell
   cd example-self-hosting-gpt
     ```
3. Run the make command
   ```shell
   make up
    ```

4. If you want add more models, just download it! (i.g. deepseek-r1:7b-qwen-distill-q4_K_M (It's a model mainly used in the local development environment!))
   ```shell
   docker exec -it ollama ollama pull deepseek-r1:7b-qwen-distill-q4_K_M
    ```