# Replaces the flex ip placeholder by the value of the FLEX_IP system environment variable
function .sed-replace-ip() {
	sed -i -e 's/${FLEX_IP}/10.13.1.50/g' docker-compose.yml
}