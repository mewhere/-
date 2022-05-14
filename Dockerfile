FROM breakdowns/mega-sdk-python:latest
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY . .
RUN apt install git -y
RUN git clone https://github.com/gillzxo/Testapp.git cd; Testapp
RUN pip install --upgrade pip
RUN pip3 install -r root/Testapp/requirements.txt

RUN chmod +x ./run

CMD ./run
