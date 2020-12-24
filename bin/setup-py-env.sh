#!/bin/bash

project_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )/.."
python_virtualenv_dir="${project_dir}/.pyve"

echo "Using ${python_virtualenv_dir}"


if [[ ! -d "${python_virtualenv_dir}" ]]
then
  virtualenv ${python_virtualenv_dir}
else
  echo "Entering virtual env ${python_virtualenv_dir}"
  source ${python_virtualenv_dir}/bin/activate
fi


# python -m pip install --upgrade pip
