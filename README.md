name: Simple CI

# Trigger the workflow on push to the main branch
on:
  push:
    branches: [main]

# Define a single job called 'build'
jobs:
  build:
    # Specify the environment (Ubuntu in this case)
    runs-on: ubuntu-latest

    steps:
      # Checkout the repository code
      - name: Checkout repository
        uses: actions/checkout@v3
      
      # Run a simple hello world script
      - name: Run Hello World
        run: echo "Hello, World!"
