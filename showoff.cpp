#include <fstream>
#include <iostream>
#include <string>

void create_file(const std::string &filepath) {
  std::ofstream file(filepath);
}

int main() {
  create_file("showoff.txt");
  return 0;
}
