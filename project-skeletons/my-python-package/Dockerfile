FROM python:3.6.6

RUN python -m pip install pip --upgrade

COPY setup.py /__PROJECT-NAME__/
COPY requirements.txt /__PROJECT-NAME__/
COPY src/ /__PROJECT-NAME__/src/
COPY test/ /__PROJECT-NAME__/test/

WORKDIR __PROJECT-NAME__/

RUN find . | grep -E "(__pycache__|\.pyc$)" | xargs rm -rf
RUN pip install -U -r requirements.txt
RUN pip install .
