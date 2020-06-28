cat <<EOF
test-foo has been installed as a systemd service.

To start/stop test-foo:

sudo systemctl start test-foo
sudo systemctl stop test-foo

To enable/disable test-foo starting automatically on boot:

sudo systemctl enable test-foo
sudo systemctl disable test-foo

To reload test-foo:

sudo systemctl restart test-foo

To view test-foo logs:

journalctl -f -u test-foo

EOF