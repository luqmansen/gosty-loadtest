#!/usr/bin/env python

from locust import HttpUser, task


class GostyTask(HttpUser):

    @task
    def get_worker(self):
        self.client.get('/')

    @task
    def get_worker(self):
        self.client.get('api/worker')

    @task
    def get_playlist(self):
        self.client.get("api/video/playlist")

    @task
    def get_progress(self):
        self.client.get("api/scheduler/progress")
