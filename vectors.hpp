#include <vector>
#include <iostream>
#include<cstdlib>
#include <glm.hpp>
#include <cassert>


double vectorLength(const std::vector<double> vec){
    double sum = 0;
    for(int i = 0; i < vec.size(); ++i){
        sum += vec[i] * vec[i];
    }
    return sqrt(sum);
}

std::vector<double> normalizeVector(const std::vector<double> &vec){
    double length = vectorLength(vec);
    std::vector<double> ret;
    ret.resize(vec.size());
    for(int i = 0; i < vec.size(); ++i){
        ret[i] = vec[i]/length;
    }
    return ret;
}

double dotProduct(const std::vector<double> &l, const std::vector<double> &r){
    double dotProduct = 0;
    for(int i = 0; i < l.size(); ++i){
        dotProduct += l[i] * r[i];
    }
    return dotProduct;
}

double radiansToDegrees(double radians){
    return radians * (180/M_PI);
}

double angleBetweenVectors(const std::vector<double> &l, const std::vector<double> &r){
    return glm::acos(dotProduct(l,r)/(vectorLength(l)*vectorLength(r)));
}

std::string analyseVectors(const std::vector<double> &l, const std::vector<double> &r){
    std::string returnString = "";
    //dot product
    returnString += "The Dot Product of the two vectors is: " + std::to_string(dotProduct(l,r)) + "\n"; 

    double dotLR = dotProduct({normalizeVector(l)},{normalizeVector(r)});
    returnString += "The Normalised Dot Product of the two vectors is: " + std::to_string(dotLR) 
    + " meaning that it is ";
    
    if(dotLR == -1){
        returnString += "opposite and parallel";
    } 
    if(dotLR == 0){
        returnString += "orthogonal";
    } 
    if(dotLR == 1){
        returnString += "identical";
    } 
    if(dotLR < 0 && dotLR > -1){
        returnString += "opposite but not parallel";
    } 
    if(dotLR > 0 && dotLR < 1){
        returnString += "Points in the same direction but not parallel";
    } 
    returnString += "\n";

    //angle between
    double angleRads = angleBetweenVectors(l,r);
    double angleDegs = radiansToDegrees(angleRads);
    returnString += "The angle between the two vectors in radians: " + std::to_string(angleRads) + "\n"; 
    returnString += "The angle between the two vectors in degrees: " + std::to_string(angleDegs) + "\n"; 

    //length of each vector
    returnString += "The length of vector 1: " + std::to_string(vectorLength(l)) + "\n"; 
    returnString += "The length of vector 2: " + std::to_string(vectorLength(r)) + "\n"; 
    return returnString;
}

void vectorProgram(){
    std::cout << "Input vectors MUST be in the correct format. (e.g 3.2, 1.2, 2, 4.5,5.2222) and also both vectors MUST be the same dimensions otherwise all function calls will fail.\n\n";
    std::cout << "input first vector, type 'done' when finished:\n";
    std::string input = "";
    std::vector<double> vec1{};
    std::vector<double> vec2{};
    while(true){
        std::cin >> input;
        if(input == "done"){
            break;
        }
        
        //todo:: check stod for invalid input
        vec1.push_back(std::stod(input));
    }

    std::cout << "input second vector, type 'done' when finished:\n";
    while(true){
        std::cin >> input;
        if(input == "done"){
            break;
        }
        vec2.push_back(std::stod(input));
    }
    
    assert((vec1.size() == vec2.size()) && "Vector dimension mismatch");
    

    std::cout << std::endl << "Analysis:\n";

    std::cout << analyseVectors(vec1,vec2) << std::endl;
}