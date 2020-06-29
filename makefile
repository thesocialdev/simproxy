# Start simple haproxy server
start:
	docker run \
		--net=host \
		-v $(pwd)/haproxy.cfg:/usr/local/etc/haproxy/haproxy.cfg \
		haproxy:2.1.7-alpine \
			haproxy -c -f /usr/local/etc/haproxy/haproxy.cfg