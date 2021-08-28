# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = "digital-ocean-token"
}

# Create a new Web Droplet in the nyc2 region
resource "digitalocean_droplet" "web" {
  image  = "ubuntu-18-04-x64"
  name   = "web-1"
  ssh_keys = ["digital ocean ssh key id, or thumbprint"]
  region = "nyc1"
  size   = "s-1vcpu-1gb"
  user_data = "${file("install_nextcloud.sh")}"
}
