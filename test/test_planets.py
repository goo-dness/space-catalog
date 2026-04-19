from fastapi.testclient import TestClient
from main import app

client = TestClient(app)


def test_root():
    response = client.get("/")
    assert response.status_code == 200


def test_get_planets():
    response = client.get("/api/v1/planets")
    assert response.status_code == 200
    assert isinstance(response.json(), list)


def test_get_single_planet():
    response = client.get("/api/v1/planets/1")
    assert response.status_code == 200
    assert "name" in response.json()
