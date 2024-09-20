name: Restart SSH on Remote Server

on:
  push:
    branches:
      - main  # Change this to your default branch if needed

jobs:
  restart-ssh:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v2

      - name: Set up SSH
        uses: webfactory/ssh-agent@v0.5.3
        with:
          ssh-private-key: ${{ secrets.SSH_PRIVATE_KEY }}

      - name: Restart SSH service on remote server
        run: |
          ssh -o StrictHostKeyChecking=no user@remote_server "sudo systemctl restart ssh"
