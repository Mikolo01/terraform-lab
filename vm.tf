resource "google_compute_instance" "mikolo-instance1" {
  name         = "my-vm1"
  machine_type = "e2-medium"          
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    network    = google_compute_network.vpc_network.id
    subnetwork = "my-subnet1"

    access_config {}
  }

  tags = ["http-allowed", "https-allowed"]
}

resource "google_compute_instance" "mikolo-instance2" {
  name         = "my-vm2"
  machine_type = "n2-standard-2"
  zone         = "europe-west10-c"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network    = google_compute_network.vpc_network.id
    subnetwork = "my-subnet2"
    access_config {}
  }

  tags = ["http-allowed", "https-allowed"]
}