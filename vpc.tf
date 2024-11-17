resource "google_compute_network" "vpc_network" {
  name                    = "my-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet1" {
  name          = "my-subnet1"
  ip_cidr_range = "10.0.0.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.id
}

resource "google_compute_subnetwork" "subnet2" {
  name          = "my-subnet2"
  ip_cidr_range = "10.0.1.0/24"
  region        = "europe-west10"
  network       = google_compute_network.vpc_network.id
}

resource "google_compute_firewall" "allow_http_subnet1" {
  name    = "allow-http-my-subnet1"
  network = google_compute_network.vpc_network.id

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["http-allowed-subnet1"]
}

resource "google_compute_firewall" "allow_https_subnet1" {
  name    = "allow-https-my-subnet1"
  network = google_compute_network.vpc_network.id

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["https-allowed-subnet1"]
}

resource "google_compute_firewall" "allow_http_subnet2" {
  name    = "allow-http-my-subnet2"
  network = google_compute_network.vpc_network.id

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["http-allowed-subnet2"]
}

resource "google_compute_firewall" "allow_https_subnet2" {
  name    = "allow-https-my-subnet2"
  network = google_compute_network.vpc_network.id

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["https-allowed-subnet2"]
}