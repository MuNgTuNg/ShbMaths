#include <glm.hpp>
#include <iostream>

void printMatrix(glm::mat3& matrix){
    std::string matString;
    matString.append(10,'-');
    matString.append("\n\n");
    for(int row = 0; row < 3; ++row){
        matString.append("| ");
        for(int col = 0; col < 3; ++col){
            matString.append(std::to_string((int)matrix[row][col]));
            matString.append(" ");
        }
        matString.append(" |");
        matString.append("\n");
    }
    matString.append("\n");
    matString.append(10,'-');
    matString.append("\n");
    std::cout << matString;
}

void fillMatrix(glm::mat3& matrix){
     for(int row = 0; row < 3; ++row){
        for(int col = 0; col < 3; ++col){
           matrix[row][col] = rand()%10;
        }
        
    }
}

void ask(glm::mat3& matrix){
        std::cout << "What is the determenant of:\n";
        printMatrix(matrix);
        int correctAnswer = 0;
        correctAnswer = glm::determinant(matrix);
        int answer = 0;
        std::cin >> answer;

        if(answer == correctAnswer){
            std::cout << "Correct! the determinant is: " << correctAnswer  << "\n";
        }else{
            std::cout << "Wrong! do you want to try again? Y/N\n";
            char reply;
            std::cin >> reply;
            if(tolower(reply) == 'y'){
                ask(matrix);
            } else{
                std::cout << "the determinant is: " << correctAnswer << "\n\n";
            }
        }
}

void matrixGame(){
    srand((unsigned)time(NULL));
    glm::mat3 matrix{};
    
    for(int i = 0; i <5; ++i){
        fillMatrix(matrix);
        ask(matrix);
    }
}