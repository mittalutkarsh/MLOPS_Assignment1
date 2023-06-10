PyTorch Docker Assignment
Welcome to the PyTorch Docker Assignment! This assignment aims to help you understand and work with Docker and PyTorch. In this assignment, you will create a Dockerfile for a PyTorch (CPU version) environment, train any model on the MNIST dataset inside the Docker container, and save the trained model checkpoint to the host operating system. Additionally, you will add an option to resume model training from a checkpoint.

Assignment Overview
In this assignment, you will perform the following tasks:


Create a Dockerfile for a PyTorch (CPU version) environment.

Keep the size of your Docker image under 1GB (uncompressed).

Train any model on the MNIST dataset inside the Docker container.

Save the trained model checkpoint to the host operating system.

Add an option to resume model training from a checkpoint.

Starter Code
The provided starter code in train.py provides a basic structure for loading data, defining a model, and running training and testing loops. You will need to complete the code at locations marked by TODO: comments.

Submission
When you have completed the assignment, push your code to your Github repository. The Github Actions workflow will automatically build your Docker image, run your training script, and check if the assignment requirements have been met. Check the Github Actions tab for the results of these checks. Make sure that all checks are passing before you submit the assignment.

Getting Started
Build Docker Image
To build the Docker image, run the following command:

docker build -f Dockerfile -t mnist .

Run Model training and testing from outside the container
To run the model training and testing from outside the container, use the following command:

docker run --name mnist_container --rm -v$(pwd):/workspace mnist python /workspace/train.py

Run Model training from inside the container
To run the model training from inside the container, use the following command:

