#include <fstream>
#include <iostream>
#include <string>

void create_file(const std::string &filepath, const std::string &content) {
  std::ofstream file(filepath);
  file << content;
}

int main() {
  create_file("showoff.txt", "Hello from createstringfile!\n");
  return 0;
}
