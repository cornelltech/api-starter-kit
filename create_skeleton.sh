#!/bin/bash -ex

usage () {
  echo "Usage: launcher PROJECT_NAME CONFIG [--debug] [--args STRING]"
  exit 1
}

project_name=$1
config=$2
user_args=""

if [ "${project_name}" == "" ]; then
  usage
fi

venv_name="${project_name}_venv"

while [ ${#} -gt 0 ]; do
  case "${1}" in
  --debug)
    DEBUG="1"
    ;;
  --args)
    user_args="$2"
    shift
    ;;
  esac

  shift 1
done

if [ -d "./${venv_name}" ]; then
  rm -rf ./${venv_name}
fi

echo "${venv_name}/" > .gitignore

python3 -m venv ${venv_name}
source ${venv_name}/bin/activate
pip install --upgrade pip

pip install -r requirements.txt

django-admin startproject ${project_name} .

# things todo
# 1) add environment vars
# 2) add gunicorn or some webserver

