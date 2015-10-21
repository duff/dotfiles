if [[ `docker-machine status riaktest` != "Running" ]]; then
  echo "Starting riaktest docker-machine..."
  docker-machine start riaktest > /dev/null
fi

eval "$(docker-machine env riaktest)"
