FROM breakdowns/mega-sdk-python:latest
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY . .
RUN apt install git -y
RUN pip3 install --no-cache-dir -r requirements.txt
RUN git clone https://github.com/gillzxo/Testapp.git cd; Testapp
RUN pip install --upgrade pip

RUN chmod +x ./run

CMD ./run
