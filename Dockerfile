FROM breakdowns/mega-sdk-python:latest

COPY . .

RUN git clone -b clients https://github.com/gillzxo/Testapp.git root/gillzxo
RUN pip install --upgrade pip
RUN pip3 install -r root/TheVaders/requirements.txt
RUN mv ./run root/gillzxo

WORKDIR root/gillzxo

RUN chmod +x ./run

CMD ./run
