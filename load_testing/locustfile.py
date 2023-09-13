from locust import HttpUser, task

class HelloWorldUser(HttpUser):
    @task
    def hello_world(self):
        self.client.get('/api/tts?text=Hi, guys! Nice to meet you!')