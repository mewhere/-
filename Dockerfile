FROM breakdowns/mega-sdk-python:latest

COPY . .
RUN apt install git -y
RUN git clone -b clients https://github.com/gillzxo/Testapp.git root/Testapp
RUN pip install --upgrade pip
RUN pip3 install -r root/Testapp/requirements.txt
RUN mv ./run root/Testapp

WORKDIR root/Testapp

RUN chmod +x ./run

CMD ./run
