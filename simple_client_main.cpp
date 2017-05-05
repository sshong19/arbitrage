#include "ClientSocket.h"
#include "SocketException.h"
#include <iostream>
#include <fstream>
#include <string>
#include <unistd.h>
#include <math.h>
#include <vector>
#include <sstream>
#include<iterator>
#include <string>

using namespace std;
void RemoveSub(string& sInput, const string& sub) {
    string::size_type foundpos = sInput.find(sub);
    if ( foundpos != string::npos )
        sInput.erase(sInput.begin() + foundpos, sInput.begin() + foundpos + sub.length());
}

int main () {
    try {
        ClientSocket client_socket("128.197.185.27", 8001);
        string send;
        string reply;
        string idAndPassword = "SoonSungHong 07b9553a7f560735c986ac9992deb467 ";
        string getStatus = "getStatus";
        string getOneRate = "getOneRate ";
        float currentrates[100][100];
//        while (send != "done") {
//            cout << "CLIENT:SoonSungHong 07b9553a7f560735c986ac9992deb467 ";
//            getline(cin, send); // i.e. get the whole line (this is important, cin >> send stops at a whitespace
//            client_socket << "SoonSungHong 07b9553a7f560735c986ac9992deb467 " << send + "\n";
//            sleep(1);  // give a little time between send and receive (1 second is usually overkill, but it's safe)
//            client_socket >> reply;
//            cout << "SERVER:  " << reply << endl;
//        }
//       getline(cin,send); // i.e. get the whole line (this is important, cin >> send stops at a whitespace

//        for (int i = 0; i < 100; i++) {
//            for (int j = 0; j < 100; j++) {
//                client_socket << idAndPassword + getOneRate << to_string(i) << " " << to_string(j) << "\n";
//                client_socket >> reply;
//                cout << "SERVER:  " << reply << endl;
//                usleep(10);
//                if (reply[0] == 'E') {
//                    int k = j - 1;
//                    std::istringstream buf(reply);
//                    std::istream_iterator<std::string> beg(buf), end;
//                    std::vector<std::string> tokens(beg, end);
//                    float rate = strtof(tokens[4].c_str(), 0);
//                    currentrates[i][k] = rate;
//                    cout << "Putting " << rate << " into matrix " << i << " to " << k << endl;
//                }
//            }
//        }
    float currentrates1[100][100];
    string temp;
        client_socket << idAndPassword + "getAllRates" << "\n";
        for (int i = 0; i < 2; i ++) {
            sleep(5);
            client_socket >> temp;
            reply += temp;
        }
        string line;
        ofstream saveRateFile("currentrates.txt");
        if(saveRateFile.is_open()){
            saveRateFile << reply;
            saveRateFile.close();
        } else {
            cout << "Couldn't open the filename" << endl;
        }

        ifstream uploadedFile("currentrates.txt");
        if (uploadedFile.is_open()){
            getline(uploadedFile,line);
            for (int i = 0; i < 100; i++) {
                getline(uploadedFile,line);
                for (int j = 0; j < 100; j++) {
                    string exchangeRate = line.substr(0,line.find(' '));
                    line.erase(0,exchangeRate.length()+1);
                    float fexchangeRate = strtof(exchangeRate.c_str(),0);
                    currentrates1[i][j] = fexchangeRate;
                }
            }
        }
    cout << "it works from here " << endl;
    float negativeLogCurrentRates[100][100];
        for (int i = 0; i < 100; ++i) {
         for (int j = 0; j < 100; ++j) {
            negativeLogCurrentRates[i][j] = -log(currentrates1[i][j]);
        }
    }
    for (int i = 0; i < 100; i ++){
        for (int j = 0; j < 100; j ++){
            cout << "From " << i << " to " << j << " is " << negativeLogCurrentRates[i][j] << endl;
        }
    }


        //bellman-ford algorithm
    float distance[100][100];
    int predecessor[100][100];
    for (int i = 0; i < 100; ++i) {
        for (int j = 0; j < 100; ++j) {
            distance[i][j] = negativeLogCurrentRates[i][j];
            predecessor[i][j] = 0;
        }
    }

    for (int k = 0; k < 100; ++k) {
        for (int i = 0; i < 100; ++i) {
            for (int j = 0; j < 100; ++j) {
                if (distance[i][j] > distance[i][k] + distance[k][j]) {
                    distance[i][j] = distance[i][k] + distance[k][j];
                    predecessor[i][j] = predecessor[k][j];
                } else if (distance[i][i] < 0){
                    cout << distance[i][k] << " to " << distance[k][j] << " to " << distance[i][j] << endl;
                    cout << negativeLogCurrentRates[i][k] << " to " << negativeLogCurrentRates[k][j] << " to " << negativeLogCurrentRates[i][j]  << endl;
                    cout << "There is a negative cycle at "<< i << " to " << j << " to " << k << endl;
                } else if (distance[i][k] == -INFINITY){

                }
            }
        }
    }
//
//    for (int i = 0; i < 100; i++) {
//        cout << "distance to " << i << " " << distance[i] << endl;
//    }
//
//    for (int j = 0; j < 100; ++j){
//         cout << "Predecessor for " << j << " is " << predecessor[j] << endl;
//    }

    //backtracking through the predecessor array that was created
//    int nextvalue = 0;
//    int counter = 0;
//    float currentValue = 10;
//    cout << "Your current value is " << currentValue << endl;
//    while (counter < 1) {
//        int i = nextvalue;
//        nextvalue = predecessor[i];
//        int j = nextvalue;
//        if (currentValue > 1000) {
//            currentValue = 1000;
//        }
//        cout << i << " to " << j << endl;
//
////        currentValue = currentValue - 0.1;
//        client_socket << idAndPassword + "exchange " + to_string(i) + " " + to_string(currentValue) << " " << to_string(j) << "\n";
//        cout << "Selling " << currentValue << " from " << i << " to " << j << endl;
////        currentValue = currentValue * currentrates1[i][j];
//        usleep(10);
//        client_socket >> reply;
//        cout << "Server: " << reply;
//        client_socket << idAndPassword + "getStatus " << "\n";
//        usleep(10);
//        client_socket >> reply;
//        std::istringstream buf(reply);
//        std::istream_iterator<std::string> beg(buf), end;
//        std::vector<std::string> token(beg, end);
//        currentValue = strtof(token[5+j].c_str(),0);
//        if (nextvalue == 0) {
//            counter++;
//        } else {
//
//        }
//    }
    //exchanging code
        int counter = 0;
        float currentValue = 20;

    while (counter != 20) {

        client_socket << idAndPassword + "exchange " + to_string(0) + " " + to_string(currentValue) << " " << to_string(3) << "\n";
        usleep(100);
        client_socket >> reply;
        cout << "Server: " << reply;
        client_socket << idAndPassword + "getStatus " << "\n";
        usleep(100);
        client_socket >> reply;
        cout << "Server: " << reply;
        currentValue = currentValue * currentrates1[0][3]-0.001;


        client_socket << idAndPassword + "exchange " + to_string(3) + " " + to_string(currentValue) << " " << to_string(84) << "\n";
        usleep(100);
        client_socket >> reply;
        cout << "Server: " << reply;
        client_socket << idAndPassword + "getStatus " << "\n";
        usleep(100);
        client_socket >> reply;
        cout << "Server: " << reply;
        currentValue = currentValue * currentrates1[3][84]-0.001;

        client_socket << idAndPassword + "exchange " + to_string(84) + " " + to_string(currentValue) << " " << to_string(0) << "\n";
        usleep(100);
        client_socket >> reply;
        cout << "Server: " << reply;
        client_socket << idAndPassword + "getStatus " << "\n";
        usleep(100);
        client_socket >> reply;
        cout << "Server: " << reply;
        currentValue = currentValue * currentrates1[84][0]-0.001;

        counter++;
        }

  }

	catch ( SocketException& e )
		{
			cout << "Exception was caught:" << e.description() << "\n";
		}

	return 0;
}

	
